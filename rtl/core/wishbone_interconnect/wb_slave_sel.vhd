library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity wb_slave_sel is
generic (
    slv_bits    : natural := 3;
    addr_sz     : natural := 32;
    dat_sz      : natural := 8;
    nib_sz      : natural := 8
);
port (
    clk_i       : in  std_logic;
    rst_i       : in  std_logic;
    
    -- Wishbone Slave Interface Implementation
    cyc_i       : in  std_logic;
    lock_i      : in  std_logic;
    stb_i       : in  std_logic;
    addr_i      : in  std_logic_vector((addr_sz - 1) downto 0);
    we_i        : in  std_logic;
    mstr_dat_i  : in  std_logic_vector((dat_sz - 1) downto 0);
    sel_i       : in  std_logic_vector((nib_sz - 1) downto 0);
    mstr_dat_o  : out std_logic_vector((dat_sz - 1) downto 0);
    ack_o       : out std_logic;
    rty_o       : out std_logic;
    err_o       : out std_logic;
    stall_o     : out std_logic;

    -- Wishbone Master Interface Implementation
    cyc_o       : out std_logic;
    lock_o      : out std_logic;
    stb_o       : out std_logic;
    addr_o      : out std_logic_vector((addr_sz - 1) downto 0);
    we_o        : out std_logic;
    slv_dat_o   : out std_logic_vector((dat_sz - 1) downto 0);
    sel_o       : out std_logic_vector((nib_sz - 1) downto 0);
    slv_dat_i   : in  std_logic_vector((dat_sz - 1) downto 0);
    ack_i       : in  std_logic;
    rty_i       : in  std_logic;
    err_i       : in  std_logic;
    stall_i     : in  std_logic;

    -- Slave Select
    slv_sel_o   : out std_logic_vector((slv_bits - 1) downto 0)
);
end wb_slave_sel;

architecture Behavioral of wb_slave_sel is
begin
    process
    begin
        wait until rising_edge(clk_i);

        cyc_o       <= cyc_i;
        lock_o      <= lock_i;
        stb_o       <= stb_i;
        addr_o      <= addr_i((addr_sz - 1) downto 0);
        we_o        <= we_i;
        slv_dat_o   <= mstr_dat_i;
        sel_o       <= sel_i;
        
        mstr_dat_o  <= slv_dat_i;
        ack_o       <= ack_i;
        rty_o       <= rty_i;
        err_o       <= err_i;
        
        if (rst_i = '1') then
            cyc_o   <= '0';
            lock_o  <= '0';
            stb_o   <= '0';
            
            ack_o   <= '0';
            rty_o   <= '0';
            err_o   <= '0';
        end if;
    end process;
    
    process
    begin
        wait until rising_edge(clk_i);

        if (stb_i = '1') then
            slv_sel_o   <= addr_i((addr_sz - 1) downto (addr_sz - slv_bits));
        end if;
    end process;
    
    stall_o <= stall_i;
end Behavioral;
