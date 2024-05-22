LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE memory_management_unit_components IS
    COMPONENT mmu IS
        PORT (
            virt_addr: in std_logic_vector(15 downto 0);
            proc_privilege_level: in std_logic;
            
            phys_addr: out std_logic_vector(15 downto 0);
            present: out std_logic;
            accessible: out std_logic;
            writable: out std_logic
        );
    END COMPONENT;
END PACKAGE;