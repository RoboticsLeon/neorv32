library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity calculadora is
    Port ( operando_1 : in STD_LOGIC_VECTOR(9 downto 0);
           operando_2 : in STD_LOGIC_VECTOR(9 downto 0);
           funcion : in STD_ULOGIC_VECTOR(1 downto 0);
           resultado : out STD_LOGIC_VECTOR(31 downto 0));
end calculadora;

architecture Behavioral of calculadora is
signal operando_1_s, operando_2_s : signed(10 downto 0);
signal resultado_s : signed(31 downto 0);
begin

  signo_op: process (operando_1,operando_2)
  begin
    if operando_1(9) = '1' then --negativo
      operando_1_s(9) <= '1';
    else --positivo
      operando_1_s(9) <= '0';
    end if;
    operando_1_s(10) <= (operando_1(9));
    operando_1_s(8 downto 0) <= signed(operando_1(8 downto 0));

    if operando_2(9) = '1' then --negativo
      operando_2_s(9) <= '1';
    else --positivo
      operando_2_s(9) <= '0';
    end if;
    operando_2_s(10) <= (operando_2(9));
    operando_2_s(8 downto 0) <= signed(operando_2(8 downto 0));
  end process;
  
  calculo: process(operando_1_s,operando_2_s, funcion)
  begin
      resultado_s <= (others => '0');
      case to_integer(unsigned(funcion)) is
          when 0 => --sumar
            resultado_s(10 downto 0) <= (operando_1_s+operando_2_s);
          when 1 => --restar
            resultado_s(10 downto 0) <= (operando_1_s-operando_2_s);
          when 2 => --multiplicar
            resultado_s(21 downto 0) <= (operando_1_s*operando_2_s);
          when others =>
            resultado_s <= (others => '1');
        end case;
  end process;

  resul: process (funcion,resultado_s)
  begin
    if funcion(1) = '0' then --caso de suma o resta el bit de signo será el 10
      if resultado_s(10) = '1' then --negativo
        resultado(30 downto 10) <= (others => '1');
      else --positivo
        resultado(30 downto 10) <= (others => '0');
      end if;
      resultado(31) <= (resultado_s(10));
      resultado(9 downto 0) <= std_logic_vector(resultado_s(9 downto 0));
    else --caso de multiplicación el bit de signo será el 22
      if resultado_s(21) = '1' then --negativo
        resultado(30 downto 21) <= (others => '1');
      else --positivo
        resultado(30 downto 21) <= (others => '0');
      end if;
      resultado(31) <= (resultado_s(21));
      resultado(20 downto 0) <= std_logic_vector(resultado_s(20 downto 0));      
    end if;  
  end process;
    
end Behavioral;
