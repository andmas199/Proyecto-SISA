library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.io_components.controladores_io;
  use work.vga_components.vga_controller;
  use work.memory_components.memorycontroller;
  use work.processor_components.proc;

entity sisa is
  port (
    clock_50  : in    std_logic;
    sram_addr : out   std_logic_vector(17 downto 0);
    sram_dq   : inout std_logic_vector(15 downto 0);
    sram_ub_n : out   std_logic;
    sram_lb_n : out   std_logic;
    sram_ce_n : out   std_logic := '1';
    sram_oe_n : out   std_logic := '1';
    sram_we_n : out   std_logic := '1';
    ledg      : out   std_logic_vector(7 downto 0);
    ledr      : out   std_logic_vector(7 downto 0);
    key       : in    std_logic_vector(3 downto 0);
    sw        : in    std_logic_vector(9 downto 0);
    hex0      : out   std_logic_vector(6 downto 0);
    hex1      : out   std_logic_vector(6 downto 0);
    hex2      : out   std_logic_vector(6 downto 0);
    hex3      : out   std_logic_vector(6 downto 0);
    ps2_clk   : inout std_logic;
    ps2_dat   : inout std_logic;
    blank_out : out   std_logic;
    csync_out : out   std_logic;
    vga_r     : out   std_logic_vector(7 downto 0);
    vga_g     : out   std_logic_vector(7 downto 0);
    vga_b     : out   std_logic_vector(7 downto 0);
    vga_hs    : out   std_logic;
    vga_vs    : out   std_logic
  );
end entity sisa;

architecture structure of sisa is

  signal clock8_counter    : unsigned(2 downto 0) := to_unsigned(0, 3);
  signal data_rd           : std_logic_vector(15 downto 0);
  signal data_wr           : std_logic_vector(15 downto 0);
  signal data_addr         : std_logic_vector(15 downto 0);
  signal data_byte         : std_logic;
  signal we                : std_logic;
  signal clock8            : std_logic;
  signal boot              : std_logic;
  signal addr_io           : std_logic_vector(7 downto 0);
  signal wr_io             : std_logic_vector(15 downto 0);
  signal rd_io             : std_logic_vector(15 downto 0);
  signal wr_out            : std_logic;
  signal rd_in             : std_logic;
  signal vga_addr          : std_logic_vector(12 downto 0);
  signal vga_we            : std_logic;
  signal vga_wr_data       : std_logic_vector(15 downto 0);
  signal vga_rd_data       : std_logic_vector(15 downto 0);
  signal vga_byte_m        : std_logic;
  signal vga_cursor        : std_logic_vector(15 downto 0);
  signal vga_cursor_enable : std_logic;
  signal intr              : std_logic;
  signal inta              : std_logic;
  signal bad_alignment     : std_logic;

begin

  pro0 : component proc
    port map (
      clk           => clock8,
      boot          => boot,
      datard_m      => data_rd,
      addr_m        => data_addr,
      data_wr       => data_wr,
      wr_m          => we,
      word_byte     => data_byte,
      addr_io       => addr_io,
      wr_io         => wr_io,
      rd_io         => rd_io,
      wr_out        => wr_out,
      rd_in         => rd_in,
      intr          => intr,
      inta          => inta,
      bad_alignment => bad_alignment
    );

  mem0 : component memorycontroller
    port map (
      clock_50      => clock_50,
      addr          => data_addr,
      wr_data       => data_wr,
      rd_data       => data_rd,
      we            => we,
      byte_m        => data_byte,
      vga_addr      => vga_addr,
      vga_we        => vga_we,
      vga_wr_data   => vga_wr_data,
      vga_rd_data   => vga_rd_data,
      vga_byte_m    => vga_byte_m,
      sram_addr     => sram_addr,
      sram_dq       => sram_dq,
      sram_ub_n     => sram_ub_n,
      sram_lb_n     => sram_lb_n,
      sram_ce_n     => sram_ce_n,
      sram_oe_n     => sram_oe_n,
      sram_we_n     => sram_we_n,
      bad_alignment => bad_alignment
    );

  io : component controladores_io
    port map (
      boot              => boot,
      clock_50          => clock_50,
      clk               => clock8,
      addr_io           => addr_io,
      wr_io             => wr_io,
      rd_io             => rd_io,
      wr_out            => wr_out,
      rd_in             => rd_in,
      led_verdes        => ledg,
      led_rojos         => ledr,
      keys              => key,
      switches          => sw(7 DOWNTO 0),
      hex0              => hex0,
      hex1              => hex1,
      hex2              => hex2,
      hex3              => hex3,
      intr              => intr,
      inta              => inta,
      vga_cursor        => vga_cursor,
      vga_cursor_enable => vga_cursor_enable,
      ps2_clk           => ps2_clk,
      ps2_data          => ps2_dat
    );

  vga : component vga_controller
    port map (
      clk_50mhz         => clock_50,
      reset             => boot,
      blank_out         => blank_out,
      csync_out         => csync_out,
      red_out           => vga_r,
      green_out         => vga_g,
      blue_out          => vga_b,
      horiz_sync_out    => vga_hs,
      vert_sync_out     => vga_vs,
      addr_vga          => vga_addr,
      we                => vga_we,
      wr_data           => vga_wr_data,
      rd_data           => vga_rd_data,
      byte_m            => vga_byte_m,
      vga_cursor        => vga_cursor,
      vga_cursor_enable => vga_cursor_enable
    );

  boot <= sw(9);

  process (clock_50) is
  begin

    if rising_edge(clock_50) then
      clock8_counter <= clock8_counter + 1;
    end if;

  end process;

  clock8 <= clock8_counter(2);

end architecture structure;

