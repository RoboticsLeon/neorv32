library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity wb_arbiter is
generic (
    mstr_bits   : natural := 2
);
port (
    clk_i       : in  std_logic;
    rst_i       : in  std_logic;

    busy_i      : in  std_logic;

    gnt_o       : out std_logic_vector((mstr_bits - 1) downto 0)
);
end wb_arbiter;

architecture Behavioral of wb_arbiter is
    signal cnt : unsigned((mstr_bits - 1) downto 0) := (others => '0');
begin
    process
    begin
        wait until rising_edge(clk_i);

        if (rst_i = '1') then
            cnt <= (others => '0');
        elsif (busy_i = '0') then
            cnt <= cnt + 1;
        end if;
    end process;

    gnt_o   <= std_logic_vector(cnt);
end Behavioral;
