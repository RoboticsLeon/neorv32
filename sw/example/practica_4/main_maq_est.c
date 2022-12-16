/* PRACTICA 3 ampliadad V1 (calculadora): Memory handler */

#include <neorv32.h>

#define BAUD_RATE 19200
#define WB_ADDR_DRIVER 0x80010010
#define BASE_ADDR 0x80010000

enum estados
{
  inicio,
  operando1,
  operando2,

};

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
  neorv32_uart0_print("Starting States Machine (Complete System)\n");

  // program code

  static enum estados estados = 0;
  uint32_t datos_keypad;
  uint32_t resultado = 0;
  uint32_t mask = 1; // 0b000...0001 inicialmente
  uint32_t tecla_pulsada = 0;
  uint32_t operando1;
  uint32_t operando2;
  uint32_t funcion;
  uint32_t resultado;

  while (1)
  {
    // Lectura e Interpretación de datos de driver_teclado
    datos_keypad = neorv32_cpu_load_unsigned_word(WB_ADDR_DRIVER);
    for (uint8_t tecla = 0; tecla < 16; tecla++)
    {
      resultado = (~datos_keypad) & mask;
      if (resultado == mask) // Detectada tecla pulsada
      {
        tecla_pulsada = (uint32_t)tecla;
        neorv32_uart0_printf("Tecla pulsada: %x\n", tecla_pulsada);

        switch (tecla_pulsada)
        {
        case 0xA: // Modo SUMA
          neorv32_uart0_print("MODO SUMA\n");
          neorv32_cpu_store_unsigned_word(BASE_ADDR + 8, tecla_pulsada);
          break;
        case 0xB: // Modo RESTA
          neorv32_uart0_print("MODO RESTA\n");
          neorv32_cpu_store_unsigned_word(BASE_ADDR + 8, tecla_pulsada);
          break;
        case 0xC: // Modo MULTIPLICACIÓN
          neorv32_uart0_print("MODO MULTIPLICACION\n");
          neorv32_cpu_store_unsigned_word(BASE_ADDR + 8, tecla_pulsada);
          break;
        case 0xF: // Selección Operando 1
          neorv32_uart0_print("OPERANDO 1\n");
          cambia_operando(BASE_ADDR); //función para cambiar el registro correspondiente al operando 1 o 2 (paso la dirección correspondiente)
          break;
        case 0xE: // Selección Operando 2
          neorv32_uart0_print("OPERANDO 2\n");
          cambia_operando(BASE_ADDR+4); //función para cambiar el registro correspondiente al operando 1 o 2 (paso la dirección correspondiente)
          break;
        case 0xD: // Mostrar resultado
          neorv32_uart0_print("RESULTADO\n");
          operando1 = neorv32_cpu_load_unsigned_word(BASE_ADDR);
          operando2 = neorv32_cpu_load_unsigned_word(BASE_ADDR+4);
          funcion = neorv32_cpu_load_unsigned_word(BASE_ADDR+8);
          resultado = neorv32_cpu_load_unsigned_word(BASE_ADDR+12);
          break;
        }
      }
      mask = mask << 1;
    }
    mask = 1;
  }





  int valorLeido = neorv32_cpu_load_unsigned_word(BASE_ADDR);
  neorv32_uart0_printf("Valor leido del registro: %x\n", valorLeido);

  for (uint8_t tecla = 0; tecla < 16; tecla++)
  {
    resultado = (~datos_keypad) & mask;
    if (resultado == mask)
    {
      neorv32_uart0_printf("Tecla pulsada: %x\n", tecla);
      neorv32_cpu_store_unsigned_word(BASE_ADDR, tecla);
      int valorLeido = neorv32_cpu_load_unsigned_word(BASE_ADDR);
      neorv32_uart0_printf("Valor leido del registro: %x\n", valorLeido);
    }
    mask = mask << 1;
  }
  mask = 1;
}

//----------------------------------------------------
// uint32_t datos_keypad;
// datos_keypad = neorv32_cpu_load_unsigned_word(WB_ADDR_DRIVER);
// uint32_t resultado = 0;
// uint32_t mask = 1; //0b000...0001 inicialmente
// for (uint8_t tecla = 0; tecla < 16; tecla++)
// {
//   resultado = (~datos_keypad) & mask;
//   if (resultado == mask)
//   {
//     neorv32_uart0_printf("Tecla: %x\n", tecla);
//   }
//   mask = mask << 1;
// }
// program code
// uint32_t memoryValue;

// // Operando1
// neorv32_cpu_store_unsigned_word(BASE_ADDR, 850);
// // Operando2
// neorv32_cpu_store_unsigned_word(BASE_ADDR + 0x4, 500);
// int i;
// for (i=0;i<3;i++){
//   // Funcion
//   neorv32_cpu_store_unsigned_word(BASE_ADDR + 0x8, i);
//   // Resultado
//   memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR);
//   neorv32_uart0_printf("OPERANDO 1: %i\n", memoryValue);
//   memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR + 4);
//   neorv32_uart0_printf("OPERANDO 2: %i\n", memoryValue);
//   memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR + 8);

//   switch (memoryValue){
//   case 0:
//     neorv32_uart0_print("FUNCION SUMA\n");
//     break;
//   case 1:
//     neorv32_uart0_print("FUNCION RESTA\n");
//     break;
//   case 2:
//     neorv32_uart0_print("FUNCION MULTIPLICACION\n");
//     break;
//   }
//   memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR + 12);
//   neorv32_uart0_printf("RESULTADO: %i\n", memoryValue);
//   neorv32_uart0_print("/*--------------------*/\n");
// }

return 0;
}
