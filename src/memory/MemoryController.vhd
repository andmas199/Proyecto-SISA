library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.memory_components.sramcontroller;

entity memorycontroller is
  port (
    clock_50    : in    std_logic;
    addr        : in    std_logic_vector(15 downto 0);
    wr_data     : in    std_logic_vector(15 downto 0);
    rd_data     : out   std_logic_vector(15 downto 0);
    we          : in    std_logic;
    byte_m      : in    std_logic;
    vga_addr    : out   std_logic_vector(12 downto 0);
    vga_we      : out   std_logic;
    vga_wr_data : out   std_logic_vector(15 downto 0);
    vga_rd_data : in    std_logic_vector(15 downto 0);
    vga_byte_m  : out   std_logic;
    -- señales para la placa de desarrollo
    sram_addr     : out   std_logic_vector(17 downto 0);
    sram_dq       : inout std_logic_vector(15 downto 0);
    sram_ub_n     : out   std_logic;
    sram_lb_n     : out   std_logic;
    sram_ce_n     : out   std_logic := '1';
    sram_oe_n     : out   std_logic := '1';
    sram_we_n     : out   std_logic := '1';
    bad_alignment : out   std_logic
  );
end entity memorycontroller;

architecture comportament of memorycontroller is

  signal sram_we      : std_logic;
  signal sram_rd_data : std_logic_vector(15 downto 0);

  type addr_space_t is (addr_space_sram_rw, addr_space_vga, addr_space_sram_ro);

  signal addr_space : addr_space_t;

begin

  addr_space <= addr_space_sram_rw when unsigned(addr) < x"A000" else
                addr_space_vga when unsigned(addr) < x"C000" else
                addr_space_sram_ro;

  with addr_space select rd_data <=
    sram_rd_data when addr_space_sram_rw,
    vga_rd_data when addr_space_vga,
    sram_rd_data when addr_space_sram_ro;

  sram_we <= we when addr_space = addr_space_sram_rw else
             '0';

  sramcontr : component sramcontroller
    port map (
      clk         => clock_50,
      sram_addr   => sram_addr,
      sram_dq     => sram_dq,
      sram_ub_n   => sram_ub_n,
      sram_lb_n   => sram_lb_n,
      sram_ce_n   => sram_ce_n,
      sram_oe_n   => sram_oe_n,
      sram_we_n   => sram_we_n,
      address     => addr,
      datareaded  => sram_rd_data,
      datatowrite => wr_data,
      wr          => sram_we,
      byte_m      => byte_m
    );

  vga_addr    <= addr(12 downto 0);
  vga_we      <= we when addr_space = addr_space_vga else
                 '0';
  vga_wr_data <= wr_data;
  vga_byte_m  <= byte_m;

  bad_alignment <= '1' when byte_m = '0' and addr(0) = '1' else
                   '0';

end architecture comportament;
