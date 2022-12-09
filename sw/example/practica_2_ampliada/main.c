#include <neorv32.h>
#include <stdbool.h>

#define BAUD_RATE 19200
#define Ncolumns 4
#define Nrows 4

#define fila1keypad 0
#define fila2keypad 1
#define fila3keypad 2
#define fila4keypad 3

#define columna1keypad 0
#define columna2keypad 1
#define columna3keypad 2
#define columna4keypad 3

#define led_up 4
#define led_right 5
#define led_down 6
#define led_left 7
#define led_center 8

#define boton1 4
#define boton2 5
#define boton3 6

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
// # << NEORV32 - Practica 2: Control de teclado PMOD Keypad de Digilent >>                        #
// # ********************************************************************************************* #

void control_teclado(void);
void maquina_estados(void);

int OutputBitsMask = 0x0000;

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
  while (1)
  {
    control_teclado();
    maquina_estados();
  }

  return 0;
}

void control_teclado(void)
{
  int i, j;
  int fila = -1, columna = -1;
  static char flag_botonPulsado = 0;

  fila = -1;
  columna = -1;
  neorv32_gpio_port_set(0x1F0 & OutputBitsMask);
  if ((neorv32_gpio_port_get() & 0xF) == 0b1111)
  {
    flag_botonPulsado = 0;
  }
  // Identificar fila y columna pulsada
  for (i = 0; i < Ncolumns; i++) // Desplazamiento de bit de columna (selecionar salida)
  {
    neorv32_gpio_port_set(0x00F | OutputBitsMask);
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

void maquina_estados(void)
{
  static enum estados estadosMaq = 0;
  static char led = 0;
  static char time50ms = 0;
  static bool toggleLeds = false;

  neorv32_cpu_delay_ms(50);

  switch (estadosMaq)
  {
  case inicial:
    // Salidas asociadas al estado
    neorv32_gpio_port_set(0xFE0F);
    OutputBitsMask &= 0xFE0F;

    // Condiciones de cambio de estado
    if (neorv32_gpio_pin_get(boton1))
      estadosMaq = secuencia_horaria;
    if (neorv32_gpio_pin_get(boton2))
      estadosMaq = secuencia_antihoraria;
    if (neorv32_gpio_pin_get(boton3))
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
      {
        neorv32_gpio_pin_clr(led + led_up - 1);
        OutputBitsMask &= 0b0 << (led + led_up - 1);
      }
      else
      {
        neorv32_gpio_pin_clr(led_left);
        OutputBitsMask &= 0b0 << led_left;
      }
      neorv32_gpio_pin_set(led + led_up);
      OutputBitsMask |= 0b1 << (led + led_up);
    }

    // Condiciones de cambio de estado
    if (neorv32_gpio_pin_get(boton1))
      estadosMaq = secuencia_horaria;
    if (neorv32_gpio_pin_get(boton2))
      estadosMaq = secuencia_antihoraria;
    if (neorv32_gpio_pin_get(boton3))
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
      {
        neorv32_gpio_pin_clr(led + led_up + 1);
        OutputBitsMask &= 0b0 << (led + led_up - 1);
      }
      else
      {
        neorv32_gpio_pin_clr(led_up);
        OutputBitsMask &= (0b0 << led_up | 0x00F);
      }
      neorv32_gpio_pin_set(led + led_up);
      OutputBitsMask |= 0b1 << (led + led_up);
    }

    // Condiciones de cambio de estado
    if (neorv32_gpio_pin_get(boton1))
      estadosMaq = secuencia_horaria;
    if (neorv32_gpio_pin_get(boton2))
      estadosMaq = secuencia_antihoraria;
    if (neorv32_gpio_pin_get(boton3))
      estadosMaq = boton3_pulsado_activaLeds;
    break;

  case boton3_pulsado_activaLeds:
    // Salidas asociadas al estado
    neorv32_gpio_port_set(0x1F0);
    OutputBitsMask |= 0x1F0;

    // Condición de cambio de estado
    if (!neorv32_gpio_pin_get(boton3))
      estadosMaq = leds_ON;
    break;

  case boton3_pulsado_desactivaLeds:
    // Salidas asociadas al estado
    neorv32_gpio_port_set(0x000);
    OutputBitsMask &= 0x000;

    // Condición de cambio de estado
    if (!neorv32_gpio_pin_get(boton3))
      estadosMaq = inicial;
    break;

  case leds_ON:

    // Condición de cambio de estado
    if (neorv32_gpio_pin_get(boton3))
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