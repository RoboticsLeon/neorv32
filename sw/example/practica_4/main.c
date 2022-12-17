/* PRACTICA 4 (Calculadora con Keypad) */

#include <neorv32.h>

#define BAUD_RATE 19200
#define WB_ADDR_DRIVER 0x80010010
#define BASE_ADDR 0x80010000

uint32_t datos_keypad = 0xffff;
uint32_t datos_keypad_anterior = 0xffff;
int32_t operando1 = 0;
int32_t operando2 = 0;

uint32_t cambia_operando(int modo);

int main()
{

  neorv32_uart0_setup(BAUD_RATE, PARITY_NONE, FLOW_CONTROL_NONE);

  // check if GPIO unit is implemented at all
  if (neorv32_gpio_available() == 0)
  {
    neorv32_uart0_print("Error! No GPIO unit synthesized!\n");
    return 1; // nope, no GPIO unit synthesized
  }

  // capture all exceptions and give debug info via UART
  // this is not required, but keeps us safe
  neorv32_rte_setup();

  // say hello
  neorv32_uart0_print("Starting Keypad Calculator (Complete System)\n");

  // program code
  int32_t resultado = 0;
  uint32_t mask = 1; // 0b000...0001 inicialmente
  uint32_t tecla_pulsada = 0;
  uint32_t funcion = 0;

  neorv32_cpu_store_unsigned_word(BASE_ADDR, operando1);
  neorv32_cpu_store_unsigned_word(BASE_ADDR + 4, operando2);
  neorv32_cpu_store_unsigned_word(BASE_ADDR + 8, funcion);

  while (1)
  {
  // Lectura e Interpretación de datos de driver_teclado
  START_AGAIN:
    datos_keypad = neorv32_cpu_load_unsigned_word(WB_ADDR_DRIVER);
    if (datos_keypad == datos_keypad_anterior) // compruebo que se haya dejado de pulsar la misma tecla
    {
      goto START_AGAIN;
    }
    if (datos_keypad == 0xfffc) // easter-egg (pulsando 10)
      neorv32_uart0_print("Has descubierto un easter egg...\n");
    else
    {
      mask = 1;
      for (uint8_t tecla = 0; (tecla < 16); tecla++)
      {
        if (((~datos_keypad) & mask) == mask) // Detectada tecla pulsada
        {
          tecla_pulsada = (uint32_t)tecla;

          switch (tecla_pulsada)
          {
          case 0xA: // Modo SUMA
            neorv32_uart0_print("MODO SUMA\n");
            neorv32_cpu_store_unsigned_word(BASE_ADDR + 8, 0);
            break;
          case 0xB: // Modo RESTA
            neorv32_uart0_print("MODO RESTA\n");
            neorv32_cpu_store_unsigned_word(BASE_ADDR + 8, 1);
            break;
          case 0xC: // Modo MULTIPLICACIÓN
            neorv32_uart0_print("MODO MULTIPLICACION\n");
            neorv32_cpu_store_unsigned_word(BASE_ADDR + 8, 2);
            break;
          case 0xF: // Selección Operando 1
            neorv32_uart0_print("OPERANDO 1 SELECCIONADO\n");
            datos_keypad_anterior = datos_keypad;
            operando1 = cambia_operando(1); // función para cambiar el registro correspondiente al operando 1 o 2 (paso la dirección correspondiente)
            neorv32_cpu_store_unsigned_word(BASE_ADDR, operando1);
            neorv32_uart0_printf("Operando 1: %i\n", operando1);
            goto START_AGAIN;
          case 0xE: // Selección Operando 2
            neorv32_uart0_print("OPERANDO 2 SELECCIONADO\n");
            datos_keypad_anterior = datos_keypad;
            operando2 = cambia_operando(0); // función para cambiar el registro correspondiente al operando 1 o 2 (paso la dirección correspondiente)
            neorv32_cpu_store_unsigned_word(BASE_ADDR + 4, operando2);
            neorv32_uart0_printf("Operando 2: %i\n", operando2);
            goto START_AGAIN;
          case 0xD: // Mostrar resultado
            neorv32_uart0_print("RESULTADO:\n");
            funcion = neorv32_cpu_load_unsigned_word(BASE_ADDR + 8);
            resultado = neorv32_cpu_load_unsigned_word(BASE_ADDR + 12);
            if (operando1 < 0)
              neorv32_uart0_printf("(%i) ", operando1);
            else
              neorv32_uart0_printf("%i ", operando1);
            switch (funcion)
            {
            case 0:
              neorv32_uart0_print("+");
              break;
            case 1:
              neorv32_uart0_print("-");
              break;
            case 2:
              neorv32_uart0_print("x");
              break;
            }
            if (operando2 < 0)
              neorv32_uart0_printf(" (%i) ", operando2);
            else
              neorv32_uart0_printf(" %i ", operando2);
            neorv32_uart0_printf("= %i \n", resultado);
            neorv32_uart0_print("*-----------------------------------------*\n");
            break;
          default:
            neorv32_uart0_print("Primero selecciona operando a guardar. \n");
            break;
          }
        }
        mask = mask << 1;
      }
    }

    datos_keypad_anterior = datos_keypad;
  }

  return 0;
}

uint32_t cambia_operando(int modo)
{
  int32_t operando = 0;
  uint32_t mask = 1;
  signed char signo = 1;
  char flagKeep = 1;

  while (1)
  {
  START_AGAIN:
    datos_keypad = neorv32_cpu_load_unsigned_word(WB_ADDR_DRIVER);
    if (datos_keypad == datos_keypad_anterior)
      goto START_AGAIN;
    mask = 1;
    for (uint8_t tecla = 0; tecla < 16; tecla++)
    {
      if (((~datos_keypad) & mask) == mask)
      {
        if (tecla <= 9)
        {
          flagKeep = 0;
          if ((((int)operando * 10 + (int)tecla) > 511))
          {
            neorv32_uart0_print("Numero excede limites \n");
            operando = 0;
          }
          else
            operando = operando * 10 + (uint32_t)tecla;
          neorv32_uart0_printf("Operando actual: %i\n", signo * operando);
        }
        else if ((((tecla != 14) && (modo == 0)) || ((tecla != 15) && (modo == 1))) && (tecla != 10))
        {
          neorv32_uart0_print("Tecla no valida \n");
        }
        else if (tecla == 10) // si se pulsa A se invierte el signo del operando
        {
          if (signo == 1)
          {
            signo = -1;
          }
          else
          {
            signo = 1;
          }
          neorv32_uart0_print("Operando actual: ");
          if (flagKeep == 1)
          {
            if (modo == 1)
              neorv32_uart0_printf("%i \n", signo * operando1);
            else
              neorv32_uart0_printf("%i \n", signo * operando2);
          }
          else
          {
            neorv32_uart0_printf("%i \n",signo*operando);
          }
        }
        else
        {
          datos_keypad_anterior = datos_keypad;
          if (flagKeep == 1)
          {
            if (modo == 1)
              operando = operando1;
            else
              operando = operando2;
          }
          return operando * signo;
        }
      }
      mask = mask << 1;
    }
    mask = 1;
    datos_keypad_anterior = datos_keypad;
  }
}
