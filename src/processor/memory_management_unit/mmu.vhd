LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.memory_management_unit_components.tlb;

ENTITY mmu IS
    PORT (
        clk: in std_logic;
        boot: in std_logic;

        virt_addr: in std_logic_vector(15 downto 0);
        proc_privilege_level: in std_logic;
        
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
BEGIN

    -- The TLB doesn't manage privileges, privileged memory is hardcoded to be
    -- the upper half of the memory space excluding VGA memory
    privileged <= '0' WHEN virt_addr < x"8000" or (virt_addr >= x"A000" and virt_addr < x"C000") ELSE '1';
    
    virt_tag <= virt_addr(15 downto 12);
    phys_addr <= phys_tag & virt_addr(11 downto 0);
    accessible <= '1' WHEN proc_privilege_level >= privileged ELSE '0';

    tlb0: tlb
        PORT MAP (
            clk => clk,
            boot => boot,
            virt_tag => virt_tag,
            new_index => "----",
            new_vtag => "----",
            new_ptag => "----",
            new_v => '-',
            new_r => '-',
            we_vtag => '0',
            we_ptag => '0',
            we_v => '0',
            we_r => '0',
            phys_tag => phys_tag,
            present => present,
            writable => writable
        );
END rtl;
