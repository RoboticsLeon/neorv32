/* PRACTICA 1 : Máquina de estados con botones y leds de la placa ice40Breaker */

#include <neorv32.h>
#include <stdbool.h>
#define BAUD_RATE 19200

void enciende_led(void);

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
  neorv32_uart0_print("Starting Enciende Led pulsando boton 1\n");

  enciende_led();

  return 0;
}

void enciende_led(void)
{
  while (1)
  {
    neorv32_cpu_delay_ms(50);
    if (neorv32_gpio_pin_get(0))
    {
      neorv32_gpio_pin_set(0);
    }
    else
    {
      neorv32_gpio_pin_clr(0);
    }
  }
}
