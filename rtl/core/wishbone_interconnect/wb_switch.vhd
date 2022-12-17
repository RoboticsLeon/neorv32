library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity wb_switch is
port (

    -- Whishbone Master Interface

    wb_mstr_adr_i       : in  std_ulogic_vector(31 downto 0);
    wb_mstr_dat_i       : in  std_ulogic_vector(31 downto 0);
    wb_mstr_dat_o       : out std_ulogic_vector(31 downto 0);
    wb_mstr_we_i        : in  std_ulogic;
    wb_mstr_sel_i       : in  std_ulogic_vector(03 downto 0);
    wb_mstr_stb_i       : in  std_ulogic;
    wb_mstr_cyc_i       : in  std_ulogic;
    wb_mstr_ack_o       : out std_ulogic;
    wb_mstr_err_o       : out std_ulogic;

    -- Whishbone Slave Interface

    wb_slv_adr_o       : out std_ulogic_vector(31 downto 0);
    wb_slv_dat_o       : out std_ulogic_vector(31 downto 0);
    wb_slv_dat_i_p0    : in  std_ulogic_vector(31 downto 0);
    wb_slv_dat_i_p1    : in  std_ulogic_vector(31 downto 0);
    wb_slv_we_o        : out std_ulogic;
    wb_slv_sel_o       : out std_ulogic_vector(03 downto 0);
    wb_slv_stb_o       : out std_ulogic_vector(1 downto 0);
    wb_slv_cyc_o       : out std_ulogic_vector(1 downto 0);
    wb_slv_ack_i       : in  std_ulogic_vector(1 downto 0);
    wb_slv_err_i       : in  std_ulogic_vector(1 downto 0)
);
end wb_switch;

architecture Behavioral of wb_switch is
begin

  process (wb_mstr_adr_i,wb_mstr_dat_i,wb_slv_dat_i_p0,wb_slv_dat_i_p1,wb_mstr_stb_i,wb_mstr_cyc_i,wb_slv_ack_i,wb_slv_err_i)
  begin

    --Escritura p0 / p1
    wb_mstr_dat_o <= (others => '0'); 
    wb_slv_dat_o <= wb_mstr_dat_i;

      --p0 (wb_regs)
    if (wb_mstr_adr_i(4) = '0')  then  
      if (wb_mstr_we_i = '0') then --Lectura
        wb_mstr_dat_o <= wb_slv_dat_i_p0;
        wb_slv_dat_o <= (others => '0');
      end if;
      -- Comunicación
      wb_slv_stb_o(0) <= wb_mstr_stb_i;
      wb_slv_cyc_o(0) <= wb_mstr_cyc_i;
      wb_slv_stb_o(1) <= '0';
      wb_slv_cyc_o(1) <= '0';
      wb_mstr_ack_o <= wb_slv_ack_i(0);
      wb_mstr_err_o <= wb_slv_err_i(0);
    
      --p1 (driver_teclado)
    else                        
      if (wb_mstr_we_i = '0') then --Lectura
        wb_mstr_dat_o <= wb_slv_dat_i_p1;
        wb_slv_dat_o <= (others => '0');
      end if;
      -- Comunicación
      wb_slv_stb_o(1) <= wb_mstr_stb_i;
      wb_slv_cyc_o(1) <= wb_mstr_cyc_i;
      wb_slv_stb_o(0) <= '0';
      wb_slv_cyc_o(0) <= '0';
      wb_mstr_ack_o <= wb_slv_ack_i(1);
      wb_mstr_err_o <= wb_slv_err_i(1);
    end if;
  end process;

  --Conexiones directas
  wb_slv_adr_o <= wb_mstr_adr_i;
  wb_slv_we_o <= wb_mstr_we_i;
  wb_slv_sel_o <= wb_mstr_sel_i;

end Behavioral;