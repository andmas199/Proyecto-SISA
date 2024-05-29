library ieee;
  use ieee.std_logic_1164.all;

package processor_components is

  component proc is
    port (
      clk           : in    std_logic;
      boot          : in    std_logic;
      datard_m      : in    std_logic_vector(15 downto 0);
      intr          : in    std_logic;
      addr_m        : out   std_logic_vector(15 downto 0);
      data_wr       : out   std_logic_vector(15 downto 0);
      wr_m          : out   std_logic;
      word_byte     : out   std_logic;
      addr_io       : out   std_logic_vector(7 downto 0);
      rd_io         : in    std_logic_vector(15 downto 0);
      wr_io         : out   std_logic_vector(15 downto 0);
      rd_in         : out   std_logic;
      wr_out        : out   std_logic;
      inta          : out   std_logic;
      bad_alignment : in    std_logic
    );
  end component;

end package processor_components;
