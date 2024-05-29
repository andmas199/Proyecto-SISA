--------------------------------------------------------------------------------
-- Create Date   :    25/08/2008
-- Design Name   :    Ram
-- Developped by :    Nabil Chouba

-- Description   :    Module Ram dual port generic.
--------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity vga_ram_dual is
  generic (
    d_width    : integer;
    addr_width : integer
  );
  port (
    o2     : out   std_logic_vector(d_width - 1 downto 0);
    we1    : in    std_logic;
    clk    : in    std_logic;
    d1     : in    std_logic_vector(d_width - 1 downto 0);
    addr1  : in    unsigned(addr_width downto 0);
    addr2  : in    unsigned(addr_width - 1 downto 0);
    byte_m : in    std_logic
  );
end entity vga_ram_dual;

architecture vga_ram_dual_arch of vga_ram_dual is

  type mem_type is array (2 ** addr_width - 1 downto 0) of  std_logic_vector(7 downto 0);

  signal mem0 : mem_type;
  signal mem1 : mem_type;

  signal addr_write : unsigned(addr_width  downto 0);
  signal temp       : std_logic_vector(d_width - 1 downto 0);

begin

  addr_write <= "0" & addr1(12 downto 1);

  rwrite_port : process (clk) is
  begin

    if (clk'event and clk = '1') then
      if (we1 = '1') then
        if (byte_m = '1') then
          if (addr1(0) = '0') then
            mem0(conv_integer(addr_write)) <= d1(7 downto 0);  -- escrivim nomes 1 byte (8 bits)
          else
            mem1(conv_integer(addr_write)) <= d1(7 downto 0);  -- escrivim nomes 1 byte (8 bits)
          end if;
        else
          mem0(conv_integer(addr_write)) <= d1(7 downto 0);    -- escrivim nomes 1 byte (8 bits)
          mem1(conv_integer(addr_write)) <= d1(15 downto 8);   -- escrivim nomes 1 byte (8 bits)
        end if;
      end if;
      o2(7 downto 0)  <= mem0(conv_integer(addr2));
      o2(15 downto 8) <= mem1(conv_integer(addr2));
    end if;

  end process rwrite_port;

end architecture vga_ram_dual_arch;
