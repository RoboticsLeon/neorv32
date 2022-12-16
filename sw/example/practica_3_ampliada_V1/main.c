/* PRACTICA 3 ampliadad V1 (calculadora): Memory handler */

#include <neorv32.h>

#define BAUD_RATE 19200
#define BASE_ADDR 0x80010000

int32_t char2int(char buffer[]);

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
  char buffer[25];

  while(1){
  // Operando1
  neorv32_uart0_print("Operando 1: "); 
  neorv32_uart0_scan(buffer, 20, 1);
  uint32_t operando1 = (uint32_t)char2int(buffer);
  neorv32_uart0_print("\n");
  neorv32_cpu_store_unsigned_word(BASE_ADDR, operando1);
  // Operando2
  neorv32_uart0_print("Operando 2: ");
  neorv32_uart0_scan(buffer, 20, 1);
  uint32_t operando2 = (uint32_t)char2int(buffer);
  neorv32_uart0_print("\n");
  neorv32_cpu_store_unsigned_word(BASE_ADDR + 0x4, operando2);
  int i;
  for (i=0;i<3;i++){
    // Funcion
    neorv32_cpu_store_unsigned_word(BASE_ADDR + 0x8, i);
    // Resultado
    memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR);
    neorv32_uart0_printf("OPERANDO 1: %i\n", memoryValue);
    memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR + 4);
    neorv32_uart0_printf("OPERANDO 2: %i\n", memoryValue);
    memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR + 8);
    
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
    }
    memoryValue = neorv32_cpu_load_unsigned_word(BASE_ADDR + 12);
    neorv32_uart0_printf("RESULTADO: %i\n", memoryValue);
    neorv32_uart0_print("/*--------------------*/\n");
  }
  }
  return 0;
}

//Convert char[] to uint
int32_t char2int(char buffer[])
{
  int32_t num = 0;
  int i=0;
  char flagSigno = 0;

  while(buffer[i]!='\0')
  {
    if(buffer[i]=='-')
    {
      flagSigno = 1;
    }
    else
    {
      num = num*10+(buffer[i]-48);
    }
    i++;
  }
  if(flagSigno)
  {
    num *= -1;
  }
  return num;
}