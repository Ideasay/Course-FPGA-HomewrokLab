library verilog;
use verilog.vl_types.all;
entity ROM4KB is
    port(
        aclr            : in     vl_logic;
        address         : in     vl_logic_vector(11 downto 0);
        clken           : in     vl_logic;
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end ROM4KB;
