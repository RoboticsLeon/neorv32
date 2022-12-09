library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library neorv32;
use neorv32.neorv32_package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity calculadora is
    Port ( operando_1 : in STD_ULOGIC_VECTOR(9 downto 0);
           operando_2 : in STD_ULOGIC_VECTOR(9 downto 0);
           funcion : in STD_ULOGIC_VECTOR(1 downto 0);
           resultado : out STD_ULOGIC_VECTOR(31 downto 0));
end calculadora;

architecture Behavioral of calculadora is
signal operando_1_s, operando_2_s : unsigned(10 downto 0);
begin

    operando_1_s <= unsigned('0' & operando_1);
    operando_2_s <= unsigned('0' & operando_2);

    process(operando_1,operando_2, funcion)
    begin
        case to_integer(unsigned(funcion)) is
            when 0 => --sumar
              resultado(10 downto 0) <= std_ulogic_vector(operando_1_s+operando_2_s);
              resultado(31 downto 11) <= (others => '0');
            when 1 => --restar
              resultado(10 downto 0) <= std_ulogic_vector(operando_1_s-operando_2_s);
              resultado(31 downto 11) <=(others => '0');
            when 2 => --multiplicar
              resultado(21 downto 0) <= std_ulogic_vector(operando_1_s*operando_2_s);
              resultado(31 downto 0) <= (others => '0');
            when others =>
              resultado <= (others => '0');
          end case;
    end process;
    
end Behavioral;