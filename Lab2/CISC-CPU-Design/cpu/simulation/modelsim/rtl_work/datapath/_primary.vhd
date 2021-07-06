library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        sys_clk         : in     vl_logic;
        op_clk          : in     vl_logic;
        sys_rst         : in     vl_logic;
        w_acc           : in     vl_logic;
        w_ax            : in     vl_logic;
        w_bx            : in     vl_logic;
        w_p             : in     vl_logic;
        w_flag          : in     vl_logic;
        w_pc            : in     vl_logic;
        w_sp            : in     vl_logic;
        w_oplo          : in     vl_logic;
        w_ophi          : in     vl_logic;
        w_opl           : in     vl_logic;
        add_mux         : in     vl_logic_vector(1 downto 0);
        bbus_mux        : in     vl_logic_vector(2 downto 0);
        alu_func        : in     vl_logic_vector(3 downto 0);
        flag_mux        : in     vl_logic;
        pc_mux          : in     vl_logic;
        sp_mux          : in     vl_logic;
        add_bus         : out    vl_logic_vector(11 downto 0);
        d_in            : in     vl_logic_vector(7 downto 0);
        d_out           : out    vl_logic_vector(7 downto 0);
        p_in            : in     vl_logic_vector(7 downto 0);
        p_out           : out    vl_logic_vector(7 downto 0);
        reg_flag        : out    vl_logic_vector(2 downto 0);
        reg_opl         : out    vl_logic_vector(7 downto 0)
    );
end datapath;
