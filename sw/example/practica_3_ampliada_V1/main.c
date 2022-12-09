/* PRACTICA 3 ampliadad V1 (calculadora): Memory handler */

#include <neorv32.h>

#define BAUD_RATE 19200
#define BASE_ADDR 0x80002000

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
  neorv32_uart0_print("Starting Calculator\n");

  // program code
  uint32_t memoryValue;

  // Operando1
  neorv32_cpu_store_unsigned_word(BASE_ADDR, 6);
  // Operando2
  neorv32_cpu_store_unsigned_word(BASE_ADDR + 0x4, 3);
  int i;
  for (i=0;i<4;i++){
    // Funcion
    neorv32_cpu_store_unsigned_word(BASE_ADDR + 0x8, i);
    // Resultado
    memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR);
    neorv32_uart0_printf("OPERANDO 1: %x\n", memoryValue);
    memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR + 0x4);
    neorv32_uart0_printf("OPERANDO 2: %x\n", memoryValue);
    memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR + 0x8);
    
    switch (memoryValue){
    case 0:
      neorv32_uart0_print("FUNCION SUMA\n");
      break;
    case 1:
      neorv32_uart0_print("FUNCION RESTA\n");
      break;
    case 2:
      neorv32_uart0_print("FUNCION MULTIPLICACION\n");
      break;
    case 3:
      neorv32_uart0_print("FUNCION DIVISION\n");
      break;
    }
    memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR + 0xC);
    neorv32_uart0_printf("RESULTADO: %x\n", memoryValue);
    neorv32_uart0_print("/*--------------------*/\n");
  }
  return 0;
}
