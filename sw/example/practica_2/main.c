#include <neorv32.h>

#define BAUD_RATE 19200
#define Ncolumns 4
#define Nrows 4

// #################################################################################################
// # << NEORV32 - Practica 2: Control de teclado PMOD Keypad de Digilent >>                        #
// # ********************************************************************************************* #

void control_teclado(void);

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
  neorv32_uart0_print("Starting keypad control\n");

  control_teclado();

  return 0;
}

void control_teclado(void)
{
  static int i, j;
  static int fila = -1, columna = -1;
  char flag_botonPulsado = 0;

  while (1)
  {
    fila = -1;
    columna = -1;
    // Identificar fila y columna pulsada
    for (i = 0; i < Ncolumns; i++) // Desplazamiento de bit de columna (selecionar salida)
    {
      neorv32_gpio_port_set(0xF);
      neorv32_gpio_pin_clr(i);
      neorv32_cpu_delay_ms(5); // Tiempo de espera para tener la lectura estabilizada
      neorv32_gpio_pin_get(i);
      for (j = 0; j < Nrows; j++) // Desplazamiento de bit de fila (leer entrada)
      {
        if (neorv32_gpio_pin_get(j) == 0 && flag_botonPulsado == 0)
        {
          flag_botonPulsado = 1;
          fila = j;
          columna = i;
        }
      }
    }

    // Sentencias condicionales para decidir carácter a enviar por UART
    switch (fila)
    {
    case 0:
      switch (columna)
      {
      case 0:
        neorv32_uart0_print("1");
        break;

      case 1:
        neorv32_uart0_print("2");
        break;

      case 2:
        neorv32_uart0_print("3");
        break;

      case 3:
        neorv32_uart0_print("A");
        break;
      }
      break;

    case 1:
      switch (columna)
      {
      case 0:
        neorv32_uart0_print("4");
        break;

      case 1:
        neorv32_uart0_print("5");
        break;

      case 2:
        neorv32_uart0_print("6");
        break;

      case 3:
        neorv32_uart0_print("B");
        break;
      }
      break;

    case 2:
      switch (columna)
      {
      case 0:
        neorv32_uart0_print("7");
        break;

      case 1:
        neorv32_uart0_print("8");
        break;

      case 2:
        neorv32_uart0_print("9");
        break;

      case 3:
        neorv32_uart0_print("C");
        break;
      }
      break;

    case 3:
      switch (columna)
      {
      case 0:
        neorv32_uart0_print("0");
        break;

      case 1:
        neorv32_uart0_print("F");
        break;

      case 2:
        neorv32_uart0_print("E");
        break;

      case 3:
        neorv32_uart0_print("D");
        break;
      }
      break;
    }
  }
}
