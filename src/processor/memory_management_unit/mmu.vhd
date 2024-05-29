library ieee;
  use ieee.std_logic_1164.all;
  use work.memory_management_unit_components.tlb;

entity mmu is
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
end entity mmu;

architecture rtl of mmu is

  signal privileged : std_logic;
  signal virt_tag   : std_logic_vector(3 downto 0);
  signal phys_tag   : std_logic_vector(3 downto 0);

  signal miss_inst     : std_logic;
  signal phys_tag_inst : std_logic_vector(3 downto 0);
  signal present_inst  : std_logic;
  signal writable_inst : std_logic;

  signal miss_data     : std_logic;
  signal phys_tag_data : std_logic_vector(3 downto 0);
  signal present_data  : std_logic;
  signal writable_data : std_logic;

begin

  -- The TLB doesn't manage privileges, privileged memory is hardcoded to be
  -- the upper half of the memory space excluding VGA memory
  privileged <= '0' when virt_addr < x"8000" or (virt_addr >= x"A000" and virt_addr < x"C000") else
                '1';

  virt_tag   <= virt_addr(15 downto 12);
  phys_addr  <= phys_tag & virt_addr(11 downto 0);
  accessible <= '1' when proc_privilege_level >= privileged else
                '0';

  miss     <= miss_inst when ins_dad = '0' else
              miss_data;
  phys_tag <= phys_tag_inst when ins_dad = '0' else
              phys_tag_data;
  present  <= present_inst when ins_dad = '0' else
              present_data;
  writable <= writable_inst when ins_dad = '0' else
              writable_data;

  tlb_inst : component tlb
    port map (
      clk       => clk,
      boot      => boot,
      virt_tag  => virt_tag,
      new_index => wr_tlb_index,
      new_vtag  => wr_tlb_data(3 downto 0),
      new_ptag  => wr_tlb_data(3 downto 0),
      new_v     => wr_tlb_data(5),
      new_r     => wr_tlb_data(4),
      we_vtag   => wr_tlb_we and not wr_tlb_ins_dad and not wr_tlb_virt_phys,
      we_ptag   => wr_tlb_we and not wr_tlb_ins_dad and wr_tlb_virt_phys,
      we_v      => wr_tlb_we and not wr_tlb_ins_dad and wr_tlb_virt_phys,
      we_r      => wr_tlb_we and not wr_tlb_ins_dad and wr_tlb_virt_phys,
      miss      => miss_inst,
      phys_tag  => phys_tag_inst,
      present   => present_inst,
      writable  => writable_inst
    );

  tlb_data : component tlb
    port map (
      clk       => clk,
      boot      => boot,
      virt_tag  => virt_tag,
      new_index => wr_tlb_index,
      new_vtag  => wr_tlb_data(3 downto 0),
      new_ptag  => wr_tlb_data(3 downto 0),
      new_v     => wr_tlb_data(5),
      new_r     => wr_tlb_data(4),
      we_vtag   => wr_tlb_we and wr_tlb_ins_dad and not wr_tlb_virt_phys,
      we_ptag   => wr_tlb_we and wr_tlb_ins_dad and wr_tlb_virt_phys,
      we_v      => wr_tlb_we and wr_tlb_ins_dad and wr_tlb_virt_phys,
      we_r      => wr_tlb_we and wr_tlb_ins_dad and wr_tlb_virt_phys,
      miss      => miss_data,
      phys_tag  => phys_tag_data,
      present   => present_data,
      writable  => writable_data
    );

end architecture rtl;
