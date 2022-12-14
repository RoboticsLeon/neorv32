library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity wb_slave_mux is
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
    -- Number of Wishbone Slaves (in powers of 2). The actual number
    -- of supported slaves is always 2^slv_bits. E.g. if slv_bits is
    -- set to 3, then up to 8 slaves are supported.
    --
    slv_bits    : natural := 3
);
port (
    clk_i       : in  std_logic;
    rst_i       : in  std_logic;

    -- Wishbone Slave Interface Implementation
    cyc_i       : in  std_logic;
    lock_i      : in  std_logic;
    stb_i       : in  std_logic;
    adr_i       : in  std_logic_vector((addr_sz - 1) downto 0);
    we_i        : in  std_logic;
    mstr_dat_i  : in  std_logic_vector((dat_sz - 1) downto 0);
    sel_i       : in  std_logic_vector((nib_sz - 1) downto 0);
    mstr_dat_o   : out std_logic_vector((dat_sz - 1) downto 0);
    ack_o       : out std_logic;
    rty_o       : out std_logic;
    err_o       : out std_logic;
    stall_o     : out std_logic;

    -- Wishbone Master Interface Implementation (1 per slave)
    cyc_o       : out std_logic;
    lock_o      : out std_logic;
    stb_o       : out std_logic_vector(((2 ** slv_bits) - 1) downto 0);
    adr_o       : out std_logic_vector((addr_sz - 1) downto 0);
    we_o        : out std_logic;
    slv_dat_o   : out std_logic_vector((dat_sz - 1) downto 0);
    sel_o       : out std_logic_vector((nib_sz - 1) downto 0);
    slv_dat_i   : in  std_logic_vector((((2 ** slv_bits) * dat_sz) - 1) downto 0);
    ack_i       : in  std_logic_vector(((2 ** slv_bits) - 1) downto 0);
    rty_i       : in  std_logic_vector(((2 ** slv_bits) - 1) downto 0);
    err_i       : in  std_logic_vector(((2 ** slv_bits) - 1) downto 0);
    stall_i     : in  std_logic_vector(((2 ** slv_bits) - 1) downto 0);

    -- Mux Select
    gnt_i       : in  std_logic_vector((slv_bits - 1) downto 0)
);
end wb_slave_mux;

architecture Behavioral of wb_slave_mux is
    signal slv  : integer range 0 to ((2 ** slv_bits) - 1);
    signal stb  : std_logic_vector(((2 ** slv_bits) - 1) downto 0);
begin
    slv <= to_integer(unsigned(gnt_i));

    m2s : process
    begin
        wait until rising_edge(clk_i);

        cyc_o       <= cyc_i;
        lock_o      <= lock_i;
        adr_o       <= adr_i;
        we_o        <= we_i;
        mstr_dat_o  <= slv_dat_i(((slv * dat_sz) + (dat_sz - 1)) downto (slv * dat_sz));
        sel_o       <= sel_i;

        if (rst_i = '1') then
            cyc_o   <= '0';
            lock_o  <= '0';
        end if;
    end process;
    
    s2m: process
    begin
        wait until rising_edge(clk_i);

        ack_o       <= ack_i(slv);
        rty_o       <= rty_i(slv);
        err_o       <= err_i(slv);
        slv_dat_o   <= mstr_dat_i;
        
        if (rst_i = '1') then
            ack_o   <= '0';
            rty_o   <= '0';
            err_o   <= '0';
        end if;
    end process;

    stb <=  "00000001"  when slv = 0 and stb_i = '1' else
            "00000010"  when slv = 1 and stb_i = '1' else
            "00000100"  when slv = 2 and stb_i = '1' else
            "00001000"  when slv = 3 and stb_i = '1' else
            "00010000"  when slv = 4 and stb_i = '1' else
            "00100000"  when slv = 5 and stb_i = '1' else
            "01000000"  when slv = 6 and stb_i = '1' else
            "10000000"  when slv = 7 and stb_i = '1' else
            "00000000";
    
    process
    begin
        wait until rising_edge(clk_i);
        stb_o   <= stb;
        if (rst_i = '1') then
            stb_o   <= (others => '0');
        end if;
    end process;

    -- Wishbone Spec demands that STALL is propagated w/o delay
    stall_o     <= stall_i(slv);
end Behavioral;
