library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity calculadora is
    Port ( operando_1 : in STD_LOGIC_VECTOR(9 downto 0);
           operando_2 : in STD_LOGIC_VECTOR(9 downto 0);
           funcion : in STD_LOGIC_VECTOR(1 downto 0);
           resultado : out STD_LOGIC_VECTOR(31 downto 0));
end calculadora;

architecture Behavioral of calculadora is
signal operando_1_s, operando_2_s : signed(31 downto 0);
signal resultado_s : signed(31 downto 0);
begin

  resultado <= (others => '0');
    
end Behavioral;
