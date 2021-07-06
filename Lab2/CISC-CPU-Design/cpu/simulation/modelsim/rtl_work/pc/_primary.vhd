library verilog;
use verilog.vl_types.all;
entity pc is
    port(
        sys_clk         : in     vl_logic;
        sys_rst         : in     vl_logic;
        add_bus         : out    vl_logic_vector(11 downto 0);
        d_in            : in     vl_logic_vector(7 downto 0);
        d_out           : out    vl_logic_vector(7 downto 0);
        p_in            : in     vl_logic_vector(7 downto 0);
        p_out           : out    vl_logic_vector(7 downto 0);
        syn_clk         : out    vl_logic;
        rom_cs          : out    vl_logic;
        ram_cs          : out    vl_logic;
        mem_rd          : out    vl_logic;
        mem_wr          : out    vl_logic;
        slow_clk        : out    vl_logic
    );
end pc;
