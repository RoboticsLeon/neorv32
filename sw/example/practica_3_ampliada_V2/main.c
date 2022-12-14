/* PRACTICA 3 ampliadad V1 (calculadora): Memory handler */

#include <neorv32.h>

#define BAUD_RATE 19200
#define WB_ADDR_DRIVER 0x80010010

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
  neorv32_uart0_print("Starting Hardware Keypad\n");

  // program code
  while (1)
  {
    uint32_t datos_keypad;
    datos_keypad = neorv32_cpu_load_unsigned_word(WB_ADDR_DRIVER);
    neorv32_uart0_printf("Traza: %x\n", datos_keypad);
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
  }

  return 0;
}
