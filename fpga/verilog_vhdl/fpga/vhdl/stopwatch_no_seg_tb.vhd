library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Stopwatch_No_Seg_tb is
end Stopwatch_No_Seg_tb;

architecture Behavioral of Stopwatch_No_Seg_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component Stopwatch_No_Seg
        Port (
            clk       : in  STD_LOGIC;
            clr       : in  STD_LOGIC;
            PA_PL     : in  STD_LOGIC;
            hz_out    : out STD_LOGIC;
            count_out : out STD_LOGIC_VECTOR (13 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal clk       : STD_LOGIC := '0';
    signal clr       : STD_LOGIC := '1';
    signal PA_PL     : STD_LOGIC := '0';
    signal hz_out    : STD_LOGIC;
    signal count_out : STD_LOGIC_VECTOR (13 downto 0);

    -- Clock period definitions
    constant clk_period : time := 10 ns; -- 100MHz

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Stopwatch_No_Seg port map (
        clk       => clk,
        clr       => clr,
        PA_PL     => PA_PL,
        hz_out    => hz_out,
        count_out => count_out
    );

    -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        clr <= '0';
        wait for 100 ns;
        clr <= '1';
        wait for 100 ns;

        -- Start the stopwatch
        PA_PL <= '1';
        
        -- Wait for 20 ms to see several centisecond pulses.
        wait for 20 ms;

        -- Pause the stopwatch
        PA_PL <= '0';
        wait for 5 ms;

        -- Resume the stopwatch
        PA_PL <= '1';
        wait for 10 ms;

        -- Reset during operation
        clr <= '0';
        wait for 1 ms;
        clr <= '1';
        
        wait for 10 ms;

        -- End simulation
        wait;
    end process;

end Behavioral;
