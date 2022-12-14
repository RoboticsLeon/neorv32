/* PRACTICA 3 : Memory handler */

#include <neorv32.h>

#define BAUD_RATE 19200
#define BASE_ADDR 0x80010000

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
  neorv32_uart0_print("Starting Wishbone Pheripheral\n");

  //program code
  uint32_t memoryValue;
  memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR);
  neorv32_cpu_delay_ms(1000);
  neorv32_uart0_printf("Valor en memoria inicial: %x\n",memoryValue);

  memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR+4);
  neorv32_cpu_delay_ms(1000);
  neorv32_uart0_printf("Valor en memoria inicial: %x\n",memoryValue);

  memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR+8);
  neorv32_cpu_delay_ms(1000);
  neorv32_uart0_printf("Valor en memoria inicial: %x\n",memoryValue);

  memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR+12);
  neorv32_cpu_delay_ms(1000);
  neorv32_uart0_printf("Valor en memoria inicial: %x\n",memoryValue);
  
  neorv32_cpu_store_unsigned_word(BASE_ADDR,0xC0FFEBED); //escribir en el primer registro de memoria

  memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR); 
  neorv32_uart0_printf("Valor en memoria final: %x\n",memoryValue);

  return 0;
}

