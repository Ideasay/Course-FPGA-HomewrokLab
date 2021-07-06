library verilog;
use verilog.vl_types.all;
entity cpu is
    port(
        sys_rst         : in     vl_logic;
        sys_clk         : in     vl_logic;
        p_out           : out    vl_logic_vector(7 downto 0);
        p_in            : in     vl_logic_vector(7 downto 0)
    );
end cpu;
