library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity driver_teclado is
  generic (
    WB_ADDR_DRIVER : std_ulogic_vector(31 downto 0) -- driver address
  );
  port (
    -- wishbone host interface --
    wb_clk_i : in std_ulogic; -- clock
    wb_rstn_i : in std_ulogic; -- reset, async, low-active
    wb_adr_i : in std_ulogic_vector(31 downto 0); -- address
    wb_dat_i : in std_ulogic_vector(31 downto 0); -- read data
    wb_dat_o : out std_ulogic_vector(31 downto 0); -- write data
    wb_we_i : in std_ulogic; -- read/write
    wb_sel_i : in std_ulogic_vector(03 downto 0); -- byte enable
    wb_stb_i : in std_ulogic; -- strobe
    wb_cyc_i : in std_ulogic; -- valid cycle
    wb_ack_o : out std_ulogic; -- transfer acknowledge
    wb_err_o : out std_ulogic; -- transfer error
    -- rows/columns keypad i/o --
    rows : in std_ulogic_vector(3 downto 0);
    columns : out std_ulogic_vector(3 downto 0)
  );
end driver_teclado;

architecture Behavioral of driver_teclado is
  signal contador : unsigned(15 downto 0); --Cuenta hasta 2^16 --> aprox 5 ms
  signal p_contador : unsigned(15 downto 0); --Cuenta hasta 2^16 --> aprox 5 ms
  signal columns_s : std_ulogic_vector(3 downto 0);
  signal p_columns_s : std_ulogic_vector(3 downto 0);
  signal cont_columns : unsigned(1 downto 0);
  signal p_cont_columns : unsigned(1 downto 0);
  signal datos : std_ulogic_vector(15 downto 0);
  signal p_datos : std_ulogic_vector(15 downto 0);

begin
  comb : process (contador, datos, columns_s, cont_columns, rows, wb_cyc_i, wb_stb_i, wb_adr_i)
  begin

    p_contador <= contador + 1;
    -- Valores por defecto (los próximos serán los actuales)
    p_columns_s <= columns_s;
    p_cont_columns <= cont_columns;
    p_datos <= datos;

    -- Cada vez que desborda, se leen filas y se cambian columnas (5ms)
    if (contador = 0) then

      --Lee filas
      case to_integer(unsigned(cont_columns)) is
        when 0 => --Column 0
          --Datos 1470
          p_datos(1) <= rows(0); --1
          p_datos(4) <= rows(1); --4
          p_datos(7) <= rows(2); --7
          p_datos(0) <= rows(3); --0
        when 1 => --Column 1
          --Datos 258F
          p_datos(2) <= rows(0); --2
          p_datos(5) <= rows(1); --5
          p_datos(8) <= rows(2); --8
          p_datos(15) <= rows(3); --F
        when 2 => --Column 2
          --Datos 369F
          p_datos(3) <= rows(0); --3
          p_datos(6) <= rows(1); --6
          p_datos(9) <= rows(2); --9
          p_datos(14) <= rows(3); --E
        when 3 => --Column 3
          --Datos ABCD
          p_datos(10) <= rows(0); --A
          p_datos(11) <= rows(1); --B
          p_datos(12) <= rows(2); --C
          p_datos(13) <= rows(3); --D
        when others =>
          p_datos <= datos;
      end case;

      --Desplaza columnas
      p_columns_s <= columns_s(2 downto 0) & columns_s(3);

      --Apunta columna por la que vamos
      p_cont_columns <= cont_columns + 1;
    end if;

    if (wb_cyc_i = '1') and (wb_stb_i = '1') and (wb_adr_i = WB_ADDR_DRIVER) then
      wb_ack_o <= '1';
    else
      wb_ack_o <= '0';
    end if;

  end process;
  sync : process (wb_clk_i, wb_rstn_i)
  begin
    -- Inicialización
    if wb_rstn_i = '0' then
      columns_s <= "1110";
      cont_columns <= "00";
      contador <= (others => '0');
      datos <= (others => '1');

    elsif rising_edge(wb_clk_i) then
      contador <= p_contador;
      datos <= p_datos;
      columns_s <= p_columns_s;
      cont_columns <= p_cont_columns;

    end if;

  end process;

  columns <= columns_s;
  wb_dat_o(15 downto 0) <= datos;
  wb_dat_o(31 downto 16) <= (others => '0');
  wb_err_o <= '0';

end Behavioral;