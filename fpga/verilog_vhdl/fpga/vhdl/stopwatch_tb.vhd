library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Stopwatch_tb is
end Stopwatch_tb;

architecture Behavioral of Stopwatch_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component Stopwatch
        Port (
            clk     : in  STD_LOGIC;
            clr     : in  STD_LOGIC;
            PA_PL   : in  STD_LOGIC;
            khz     : out STD_LOGIC;
            hz      : out STD_LOGIC;
            segment : out STD_LOGIC_VECTOR (6 downto 0);
            anode   : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal clk     : STD_LOGIC := '0';
    signal clr     : STD_LOGIC := '1';
    signal PA_PL   : STD_LOGIC := '0';
    signal khz     : STD_LOGIC;
    signal hz      : STD_LOGIC;
    signal segment : STD_LOGIC_VECTOR (6 downto 0);
    signal anode   : STD_LOGIC_VECTOR (3 downto 0);

    -- Clock period definitions
    constant clk_period : time := 10 ns; -- 100MHz

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Stopwatch port map (
        clk     => clk,
        clr     => clr,
        PA_PL   => PA_PL,
        khz     => khz,
        hz      => hz,
        segment => segment,
        anode   => anode
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
        
        -- Wait for some time to see the counters working.
        -- Note: With 100MHz clock, 1kHz (khz) toggles every 50,000 cycles (0.5ms half period)
        -- and 100Hz (hz) toggles every 500,000 cycles (5ms half period).
        -- To see 'hz' toggle twice (one full period of 10ms), we need to wait at least 10ms.
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
