library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity wb_switch is
generic (
    --
    -- Width of data bus
    --
    dat_sz      : natural := 8;

    --
    -- Nibble size
    --
    nib_sz      : natural := 8;

    -- Width of address bus
    --
    addr_sz     : natural := 32;

    --
    -- Number of Wishbone Masters (in powers os 2). The actual number
    -- of supported masters is always 2^mstr_bits. E.g. if mstr_bits is
    -- set to 2, then up to 4 masters are supported.
    --
    mstr_bits   : natural := 0;

    --
    -- Number of Wishbone Slaves (in powers of 2). The actual number
    -- of supported slaves is always 2^slv_bits. E.g. if slv_bits is
    -- set to 3, then up to 8 slaves are supported.
    --
    slv_bits    : natural := 1
);
port (
    clk_i       : in  std_logic;
    rst_i       : in  std_logic;

    --
    -- Whishbone Master Interface
    --
    -- The Signal Directions are inverted as they are coming from/going to
    -- the masters into/from the switch/arbiter logic.
    --
    wb_mstr_cyc_i       : in  std_logic_vector(((2 ** mstr_bits) - 1) downto 0);
    wb_mstr_lock_i      : in  std_logic_vector(((2 ** mstr_bits) - 1) downto 0);
    wb_mstr_stb_i       : in  std_logic_vector(((2 ** mstr_bits) - 1) downto 0);

    wb_mstr_adr_i       : in  std_logic_vector((((2 ** mstr_bits) * addr_sz) - 1) downto 0);
    wb_mstr_we_i        : in  std_logic_vector(((2 ** mstr_bits) - 1) downto 0);
    wb_mstr_dat_i       : in  std_logic_vector((((2 ** mstr_bits) * dat_sz) - 1) downto 0);
    wb_mstr_sel_i       : in  std_logic_vector((((2 ** mstr_bits) * nib_sz) - 1) downto 0);

    wb_mstr_dat_o       : out std_logic_vector((dat_sz - 1) downto 0);

    wb_mstr_ack_o       : out std_logic;
    wb_mstr_stall_o     : out std_logic;
    wb_mstr_err_o       : out std_logic;
    wb_mstr_rty_o       : out std_logic;

    --
    -- Whishbone Slave Interface
    --
    -- The Signal Directions are inverted as they are coming from/going to
    -- the masters into/from the switch/arbiter logic.
    --
    wb_slv_cyc_o       : out std_logic;
    wb_slv_lock_o      : out std_logic;
    wb_slv_stb_o       : out std_logic_vector(((2 ** slv_bits) - 1) downto 0);

    wb_slv_adr_o       : out std_logic_vector((addr_sz - 1) downto 0);
    wb_slv_we_o        : out std_logic;
    wb_slv_dat_o       : out std_logic_vector((dat_sz - 1) downto 0);
    wb_slv_sel_o       : out std_logic_vector((nib_sz - 1) downto 0);

    wb_slv_dat_i       : in  std_logic_vector((((2 ** slv_bits) * dat_sz) - 1) downto 0);

    wb_slv_ack_i       : in  std_logic_vector(((2 ** slv_bits) - 1) downto 0);
    wb_slv_stall_i     : in  std_logic_vector(((2 ** slv_bits) - 1) downto 0);
    wb_slv_err_i       : in  std_logic_vector(((2 ** slv_bits) - 1) downto 0);
    wb_slv_rty_i       : in  std_logic_vector(((2 ** slv_bits) - 1) downto 0)
);
end wb_switch;

architecture Behavioral of wb_switch is
    component wb_arbiter is
    generic (
        mstr_bits   : natural := 2
    );
    port (
        clk_i       : in  std_logic;
        rst_i       : in  std_logic;
        busy_i      : in  std_logic;
        gnt_o       : out std_logic_vector((mstr_bits - 1) downto 0)
    );
    end component wb_arbiter;

    component wb_slave_sel is
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
    end component wb_slave_sel;

    component wb_master_mux is
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
        -- Output Signals
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
    end component wb_master_mux;

    component wb_slave_mux is
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
        -- Number of address bits for slave selection.
        -- Should 2^slv_bits should always be equal to slv_cnt!
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
        mstr_dat_o  : out std_logic_vector((dat_sz - 1) downto 0);
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
    end component wb_slave_mux;

    signal master_cyc   : std_logic;
    signal master_lock  : std_logic;
    signal master_stb   : std_logic;
    signal master_adr   : std_logic_vector((addr_sz - 1) downto 0);
    signal master_we    : std_logic;
    signal master_m2s   : std_logic_vector((dat_sz - 1) downto 0);
    signal master_sel   : std_logic_vector((nib_sz - 1) downto 0);
    signal master_s2m   : std_logic_vector((dat_sz - 1) downto 0);
    signal master_ack   : std_logic;
    signal master_rty   : std_logic;
    signal master_err   : std_logic;
    signal master_stall : std_logic;
    
    signal master_gnt   : std_logic_vector((mstr_bits - 1) downto 0);

    signal map_cyc      : std_logic;
    signal map_lock     : std_logic;
    signal map_stb      : std_logic;
    signal map_addr     : std_logic_vector((addr_sz - 1) downto 0);
    signal map_we       : std_logic;
    signal map_m2s      : std_logic_vector((dat_sz - 1) downto 0);
    signal map_sel      : std_logic_vector((nib_sz - 1) downto 0);
    signal map_s2m      : std_logic_vector((dat_sz - 1) downto 0);
    signal map_ack      : std_logic;
    signal map_rty      : std_logic;
    signal map_err      : std_logic;
    signal map_stall    : std_logic;
    
    signal slave_sel    : std_logic_vector((slv_bits - 1) downto 0);

    signal busy         : std_logic;
begin
    arbiter : wb_arbiter
    generic map (
        mstr_bits   => mstr_bits
    )
    port map (
        clk_i       => clk_i,
        rst_i       => rst_i,
        busy_i      => busy,
        gnt_o       => master_gnt
    );

    master_mux : wb_master_mux
    generic map (
        dat_sz      => dat_sz,
        nib_sz      => nib_sz,
        addr_sz     => addr_sz,
        mstr_bits   => mstr_bits
    )
    port map (
        clk_i   => clk_i,
        rst_i   => rst_i,

        -- Slave Interface Implementation (i.e. signals coming from a master interface)
        cyc_i       => wb_mstr_cyc_i,
        lock_i      => wb_mstr_lock_i,
        stb_i       => wb_mstr_stb_i,

        adr_i       => wb_mstr_adr_i,
        we_i        => wb_mstr_we_i,
        dat_m2s_i   => wb_mstr_dat_i,
        sel_i       => wb_mstr_sel_i,

        dat_s2m_o   => wb_mstr_dat_o,
        ack_o       => wb_mstr_ack_o,
        rty_o       => wb_mstr_rty_o,
        err_o       => wb_mstr_err_o,
        stall_o     => wb_mstr_stall_o,

        -- Master Interface Implementation (i.e. signals going to a slave interface)
        cyc_o       => master_cyc,
        lock_o      => master_lock,
        stb_o       => master_stb,
        adr_o       => master_adr,
        we_o        => master_we,
        dat_m2s_o   => master_m2s,
        sel_o       => master_sel,
        dat_s2m_i   => master_s2m,
        ack_i       => master_ack,
        rty_i       => master_rty,
        err_i       => master_err,
        stall_i     => master_stall,

        -- Mux Select
        gnt_i       => master_gnt,
        busy_o      => busy
    );

    translator : wb_slave_sel
    generic map (
        slv_bits    => slv_bits,
        addr_sz     => addr_sz,
        dat_sz      => dat_sz,
        nib_sz      => nib_sz
    )
    port map (
        clk_i       => clk_i,
        rst_i       => rst_i,
     
        -- Wishbone Input Signals
        cyc_i       => master_cyc,
        lock_i      => master_lock,
        stb_i       => master_stb,
        addr_i      => master_adr,
        we_i        => master_we,
        mstr_dat_i  => master_m2s,
        sel_i       => master_sel,
        
        mstr_dat_o  => master_s2m,
        ack_o       => master_ack,
        rty_o       => master_rty,
        err_o       => master_err,
        stall_o     => master_stall,

        -- Wishbone Output Signals
        cyc_o       => map_cyc,
        lock_o      => map_lock,
        stb_o       => map_stb,
        addr_o      => map_addr,
        we_o        => map_we,
        slv_dat_o   => map_m2s,
        sel_o       => map_sel,
        slv_dat_i   => map_s2m,
        ack_i       => map_ack,
        rty_i       => map_rty,
        err_i       => map_err,
        stall_i     => map_stall,

        -- Slave Select
        slv_sel_o   => slave_sel
    );

    slave_mux : wb_slave_mux
    generic map (
        dat_sz      => dat_sz,
        nib_sz      => nib_sz,
        addr_sz     => addr_sz,
        slv_bits    => slv_bits
    )
    port map (
        clk_i       => clk_i,
        rst_i       => rst_i,

        -- Wishbone Slave Interface Implementation
        cyc_i       => map_cyc,
        lock_i      => map_lock,
        stb_i       => map_stb,
        adr_i       => map_addr,
        we_i        => map_we,
        mstr_dat_i  => map_m2s,
        sel_i       => map_sel,
        mstr_dat_o  => map_s2m,
        ack_o       => map_ack,
        rty_o       => map_rty,
        err_o       => map_err,
        stall_o     => map_stall,
        
        -- Wishbone Master Interface Implementation (1 per slave)
        cyc_o       => wb_slv_cyc_o,
        lock_o      => wb_slv_lock_o,
        stb_o       => wb_slv_stb_o,
        adr_o       => wb_slv_adr_o,
        we_o        => wb_slv_we_o,
        slv_dat_o   => wb_slv_dat_o,
        sel_o       => wb_slv_sel_o,
        slv_dat_i   => wb_slv_dat_i,
        ack_i       => wb_slv_ack_i,
        stall_i     => wb_slv_stall_i,
        err_i       => wb_slv_err_i,
        rty_i       => wb_slv_rty_i,

        -- Mux Select
        gnt_i       => slave_sel
    );
end Behavioral;

