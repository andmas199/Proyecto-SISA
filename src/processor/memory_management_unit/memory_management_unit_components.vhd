library ieee;
  use ieee.std_logic_1164.all;

package memory_management_unit_components is

  component mmu is
    port (
      clk  : in    std_logic;
      boot : in    std_logic;

      virt_addr            : in    std_logic_vector(15 downto 0);
      proc_privilege_level : in    std_logic;
      ins_dad              : in    std_logic;

      wr_tlb_ins_dad   : in    std_logic;
      wr_tlb_virt_phys : in    std_logic;
      wr_tlb_index     : in    std_logic_vector(3 downto 0);
      wr_tlb_data      : in    std_logic_vector(5 downto 0);
      wr_tlb_we        : in    std_logic;

      miss       : out   std_logic;
      phys_addr  : out   std_logic_vector(15 downto 0);
      present    : out   std_logic;
      accessible : out   std_logic;
      writable   : out   std_logic
    );
  end component;

  component tlb is
    port (
      clk      : in    std_logic;
      boot     : in    std_logic;
      virt_tag : in    std_logic_vector(3 downto 0);

      new_index : in    std_logic_vector(3 downto 0);
      new_vtag  : in    std_logic_vector(3 downto 0);
      new_ptag  : in    std_logic_vector(3 downto 0);
      new_v     : in    std_logic;
      new_r     : in    std_logic;
      we_vtag   : in    std_logic;
      we_ptag   : in    std_logic;
      we_v      : in    std_logic;
      we_r      : in    std_logic;

      miss     : out   std_logic;
      phys_tag : out   std_logic_vector(3 downto 0);
      present  : out   std_logic;
      writable : out   std_logic
    );
  end component;

end package memory_management_unit_components;
