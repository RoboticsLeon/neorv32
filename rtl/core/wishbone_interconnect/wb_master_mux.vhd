library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity wb_master_mux is
generic (
    --
    -- Width of data bus
    --
    dat_sz      : natural := 8;

    --
    -- Nibble size
    --
    nib_sz      : natural := 8;

    --
    -- Width of address bus
    --
    addr_sz     : natural := 32;
    
    --
    -- Number of Wishbone Masters
    --
    mstr_bits   : natural := 2
);
port (
    clk_i       : in  std_logic;
    rst_i       : in  std_logic;

    -- Slave Interface Implementation (i.e. signals coming from a master interface)
    cyc_i       : in  std_logic_vector(((2 ** mstr_bits) - 1) downto 0);
    lock_i      : in  std_logic_vector(((2 ** mstr_bits) - 1) downto 0);
    stb_i       : in  std_logic_vector(((2 ** mstr_bits) - 1) downto 0);

    adr_i       : in  std_logic_vector((((2 ** mstr_bits) * addr_sz) - 1) downto 0);
    we_i        : in  std_logic_vector(((2 ** mstr_bits) - 1) downto 0);
    dat_m2s_i   : in  std_logic_vector((((2 ** mstr_bits) * dat_sz) - 1) downto 0);
    sel_i       : in  std_logic_vector((((2 ** mstr_bits) * nib_sz) - 1) downto 0);
    
    dat_s2m_o   : out std_logic_vector((dat_sz - 1) downto 0);
    ack_o       : out std_logic;
    rty_o       : out std_logic;
    err_o       : out std_logic;
    stall_o     : out std_logic;

    -- Master Interface Implementation (i.e. signals going to a slave interface)
    cyc_o       : out std_logic;
    lock_o      : out std_logic;
    stb_o       : out std_logic;

    adr_o       : out std_logic_vector((addr_sz - 1) downto 0);
    we_o        : out std_logic;
    dat_m2s_o   : out std_logic_vector((dat_sz - 1) downto 0);
    sel_o       : out std_logic_vector((nib_sz - 1) downto 0);

    dat_s2m_i   : in  std_logic_vector((dat_sz - 1) downto 0);
    ack_i       : in  std_logic;
    rty_i       : in  std_logic;
    err_i       : in  std_logic;
    stall_i     : in  std_logic;
    
    -- Mux Select
    gnt_i       : in  std_logic_vector((mstr_bits - 1) downto 0);
    busy_o      : out std_logic
);
end wb_master_mux;

architecture Behavioral of wb_master_mux is
    signal mstr  : integer range 0 to ((2 ** mstr_bits) - 1);
    
    signal cyc      : std_logic;
    signal lock     : std_logic;
    signal stb      : std_logic;
    signal adr      : std_logic_vector(adr_o'range);
    signal we       : std_logic;
    signal dat_m2s  : std_logic_vector(dat_m2s_o'range);
    signal sel      : std_logic_vector(sel_o'range);
begin
    mstr         <= to_integer(unsigned(gnt_i));

    cyc         <= cyc_i(mstr);
    lock        <= lock_i(mstr);
    stb         <= stb_i(mstr);
    adr         <= adr_i(((mstr * addr_sz) + (addr_sz - 1)) downto (mstr * addr_sz));
    we          <= we_i(mstr);
    dat_m2s     <= dat_m2s_i(((mstr * dat_sz) + (dat_sz - 1)) downto (mstr * dat_sz));
    sel         <= sel_i(((mstr * nib_sz) + (nib_sz - 1)) downto (mstr * nib_sz));

    m2s : process
    begin
        wait until rising_edge(clk_i);

        cyc_o       <= cyc;
        lock_o      <= lock;
        stb_o       <= stb;

        adr_o       <= adr;
        we_o        <= we;
        dat_m2s_o   <= dat_m2s;
        sel_o       <= sel;

        if (rst_i = '1') then
            cyc_o   <= '0';
            lock_o  <= '0';
            stb_o   <= '0';
        end if;
    end process;

    s2m : process
    begin
        wait until rising_edge(clk_i);

        dat_s2m_o   <= dat_s2m_i;

        ack_o       <= ack_i;
        rty_o       <= rty_i;
        err_o       <= err_i;

        if (rst_i = '1') then
            ack_o   <= '0';
            rty_o   <= '0';
            err_o   <= '0';
        end if;
    end process;

    stall_o <= stall_i;
    busy_o  <= cyc;
end Behavioral;

