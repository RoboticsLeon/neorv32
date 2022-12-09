#include <neorv32.h>
#include <stdbool.h>

#define BAUD_RATE 19200

enum estados
{
  inicial,
  boton3_pulsado_activaLeds,
  boton3_pulsado_desactivaLeds,
  secuencia_horaria,
  secuencia_antihoraria,
  leds_ON
};

// #################################################################################################
// # << NEORV32 - Practica 1: Máquina de estados simple con LEDs y botones >>                                                     #
// # ********************************************************************************************* #

void maquina_estados(void);

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
  neorv32_uart0_print("Starting States Machine\n");

  maquina_estados();

  return 0;
}

void maquina_estados(void)
{
  static enum estados estadosMaq = 0;
  static char led = 0;
  static char time50ms = 0;
  static bool toggleLeds = false;

  while (1)
  {
    neorv32_cpu_delay_ms(50);

    switch (estadosMaq)
    {
    case inicial:
      // Salidas asociadas al estado
      neorv32_gpio_port_set(0b00000);

      // Condiciones de cambio de estado
      if (neorv32_gpio_pin_get(0))
        estadosMaq = secuencia_horaria;
      if (neorv32_gpio_pin_get(1))
        estadosMaq = secuencia_antihoraria;
      if (neorv32_gpio_pin_get(2))
      {
        neorv32_cpu_delay_ms(20); // Filtro antirebote
        estadosMaq = boton3_pulsado_activaLeds;
      }
      break;

    case secuencia_horaria:
      // Salidas asociadas al estado
      if (toggleLeds)
      {
        toggleLeds = false;
        if (led < 3)
          led++;
        else
          led = 0;
        if (led > 0)
          neorv32_gpio_pin_clr(led - 1);
        else
          neorv32_gpio_pin_clr(3);
        neorv32_gpio_pin_set(led);
      }

      // Condiciones de cambio de estado
      if (neorv32_gpio_pin_get(1))
        estadosMaq = secuencia_antihoraria;
      if (neorv32_gpio_pin_get(2))
        estadosMaq = boton3_pulsado_activaLeds;
      break;

    case secuencia_antihoraria:
      if (toggleLeds)
      {
        toggleLeds = false;
        // Salidas asociadas al estado
        if (led > 0)
          led--;
        else
          led = 3;
        if (led < 3)
          neorv32_gpio_pin_clr(led + 1);
        else
          neorv32_gpio_pin_clr(0);
        neorv32_gpio_pin_set(led);
      }

      // Condiciones de cambio de estado
      if (neorv32_gpio_pin_get(0))
        estadosMaq = secuencia_horaria;
      if (neorv32_gpio_pin_get(2))
        estadosMaq = boton3_pulsado_activaLeds;
      break;

    case boton3_pulsado_activaLeds:
      // Salidas asociadas al estado
      neorv32_gpio_port_set(0b11111);

      // Condición de cambio de estado
      if (!neorv32_gpio_pin_get(2))
        estadosMaq = leds_ON;
      break;

    case boton3_pulsado_desactivaLeds:
      // Salidas asociadas al estado
      neorv32_gpio_port_set(0b00000);

      // Condición de cambio de estado
      if (!neorv32_gpio_pin_get(2))
        estadosMaq = inicial;
      break;

    case leds_ON:

      // Condición de cambio de estado
      if (neorv32_gpio_pin_get(2))
        estadosMaq = boton3_pulsado_desactivaLeds;
      break;
    }
    if (time50ms < 5)
    {
      time50ms++;
    }
    else
    {
      toggleLeds = true;
      time50ms = 0;
    }
  }
}
