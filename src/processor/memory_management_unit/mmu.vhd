LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.memory_management_unit_components.tlb;

ENTITY mmu IS
    PORT (
        clk: in std_logic;
        boot: in std_logic;

        virt_addr: in std_logic_vector(15 downto 0);
        proc_privilege_level: in std_logic;
        ins_dad: in std_logic;

        wr_tlb_ins_dad: in std_logic;
        wr_tlb_virt_phys: in std_logic;
        wr_tlb_index: in std_logic_vector(3 downto 0);
        wr_tlb_data: in std_logic_vector(5 downto 0);
        wr_tlb_we: in std_logic;
        
        miss: out std_logic;
        phys_addr: out std_logic_vector(15 downto 0);
        present: out std_logic;
        accessible: out std_logic;
        writable: out std_logic
    );
END mmu;

ARCHITECTURE rtl OF mmu IS
    SIGNAL privileged: std_logic;
    SIGNAL virt_tag: std_logic_vector(3 downto 0);
    SIGNAL phys_tag: std_logic_vector(3 downto 0);

    SIGNAL miss_inst: std_logic;
    SIGNAL phys_tag_inst: std_logic_vector(3 downto 0);
    SIGNAL present_inst: std_logic;
    SIGNAL writable_inst: std_logic;

    SIGNAL miss_data: std_logic;
    SIGNAL phys_tag_data: std_logic_vector(3 downto 0);
    SIGNAL present_data: std_logic;
    SIGNAL writable_data: std_logic;
BEGIN

    -- The TLB doesn't manage privileges, privileged memory is hardcoded to be
    -- the upper half of the memory space excluding VGA memory
    privileged <= '0' WHEN virt_addr < x"8000" or (virt_addr >= x"A000" and virt_addr < x"C000") ELSE '1';
    
    virt_tag <= virt_addr(15 downto 12);
    phys_addr <= phys_tag & virt_addr(11 downto 0);
    accessible <= '1' WHEN proc_privilege_level >= privileged ELSE '0';

    miss <= miss_inst WHEN ins_dad = '0' ELSE miss_data;
    phys_tag <= phys_tag_inst WHEN ins_dad = '0' ELSE phys_tag_data;
    present <= present_inst WHEN ins_dad = '0' ELSE present_data;
    writable <= writable_inst WHEN ins_dad = '0' ELSE writable_data;

    tlb_inst: tlb
        PORT MAP (
            clk => clk,
            boot => boot,
            virt_tag => virt_tag,
            new_index => wr_tlb_index,
            new_vtag => wr_tlb_data(3 downto 0),
            new_ptag => wr_tlb_data(3 downto 0),
            new_v => wr_tlb_data(5),
            new_r => wr_tlb_data(4),
            we_vtag => wr_tlb_we and not wr_tlb_ins_dad and not wr_tlb_virt_phys,
            we_ptag => wr_tlb_we and not wr_tlb_ins_dad and wr_tlb_virt_phys,
            we_v => wr_tlb_we and not wr_tlb_ins_dad and wr_tlb_virt_phys,
            we_r => wr_tlb_we and not wr_tlb_ins_dad and wr_tlb_virt_phys,
            miss => miss_inst,
            phys_tag => phys_tag_inst,
            present => present_inst,
            writable => writable_inst
        );

    tlb_data: tlb
        PORT MAP (
            clk => clk,
            boot => boot,
            virt_tag => virt_tag,
            new_index => wr_tlb_index,
            new_vtag => wr_tlb_data(3 downto 0),
            new_ptag => wr_tlb_data(3 downto 0),
            new_v => wr_tlb_data(5),
            new_r => wr_tlb_data(4),
            we_vtag => wr_tlb_we and wr_tlb_ins_dad and not wr_tlb_virt_phys,
            we_ptag => wr_tlb_we and wr_tlb_ins_dad and wr_tlb_virt_phys,
            we_v => wr_tlb_we and wr_tlb_ins_dad and wr_tlb_virt_phys,
            we_r => wr_tlb_we and wr_tlb_ins_dad and wr_tlb_virt_phys,
            miss => miss_data,
            phys_tag => phys_tag_data,
            present => present_data,
            writable => writable_data
        );
END rtl;
