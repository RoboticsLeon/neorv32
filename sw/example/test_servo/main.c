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
  neorv32_uart0_print("Starting Servo Test\n");

  // program code
  neorv32_pwm_enable();
  neorv32_pwm_setup((uint8_t)5);
  while (1)
  {
    neorv32_pwm_set(0,)
  }
}
