LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mmu IS
    PORT (
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
BEGIN

    -- Without a TLB, privileged memory is hardcoded to be the upper half of the
    -- memory space excluding VGA memory
    privileged <= '0' WHEN virt_addr < x"8000" or (virt_addr >= x"A000" and virt_addr < x"C000") ELSE '1';
    
    -- There's no address translation for now, we just verify privileged access
    phys_addr <= virt_addr;
    present <= '1';
    accessible <= '1' WHEN proc_privilege_level >= privileged ELSE '0';
    writable <= '1'; -- ROM emulation is done in the memory controller

END rtl;