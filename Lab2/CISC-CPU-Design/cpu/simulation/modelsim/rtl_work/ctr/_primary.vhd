library verilog;
use verilog.vl_types.all;
entity ctr is
    generic(
        s0              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        s1              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        s2              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        s3              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        s4              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        s5              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst         : in     vl_logic;
        w_acc           : out    vl_logic;
        w_ax            : out    vl_logic;
        w_bx            : out    vl_logic;
        w_p             : out    vl_logic;
        w_flag          : out    vl_logic;
        w_pc            : out    vl_logic;
        w_sp            : out    vl_logic;
        w_oplo          : out    vl_logic;
        w_ophi          : out    vl_logic;
        w_opl           : out    vl_logic;
        add_mux         : out    vl_logic_vector(1 downto 0);
        bbus_mux        : out    vl_logic_vector(2 downto 0);
        alu_func        : out    vl_logic_vector(3 downto 0);
        flag_mux        : out    vl_logic;
        pc_mux          : out    vl_logic;
        sp_mux          : out    vl_logic;
        reg_flag        : in     vl_logic_vector(2 downto 0);
        reg_opl         : in     vl_logic_vector(7 downto 0);
        rom_cs          : out    vl_logic;
        ram_cs          : out    vl_logic;
        mem_rd          : out    vl_logic;
        mem_wr          : out    vl_logic;
        state           : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of s0 : constant is 1;
    attribute mti_svvh_generic_type of s1 : constant is 1;
    attribute mti_svvh_generic_type of s2 : constant is 1;
    attribute mti_svvh_generic_type of s3 : constant is 1;
    attribute mti_svvh_generic_type of s4 : constant is 1;
    attribute mti_svvh_generic_type of s5 : constant is 1;
end ctr;
