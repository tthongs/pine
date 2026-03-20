library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Stopwatch_No_Seg is
    Port (
        clk       : in  STD_LOGIC; -- System Clock (100MHz)
        clr       : in  STD_LOGIC; -- Active-low Reset
        PA_PL     : in  STD_LOGIC; -- Play/Pause (1 = Play, 0 = Pause)
        hz_out    : out STD_LOGIC; -- 100Hz Timing Pulse (Centiseconds)
        count_out : out STD_LOGIC_VECTOR (13 downto 0) -- 0 to 9999 Raw Count
    );
end Stopwatch_No_Seg;

architecture Behavioral of Stopwatch_No_Seg is
    signal qhz     : STD_LOGIC := '0';
    signal divider : unsigned(18 downto 0) := (others => '0');
    signal data    : unsigned(13 downto 0) := (others => '0');

begin
    -- 100Hz clock divider (Synchronous Reset)
    -- Generates a toggle every 5ms, resulting in a 100Hz clock (centiseconds)
    process(clk)
    begin
        if rising_edge(clk) then
            if clr = '0' then
                divider <= (others => '0');
                qhz <= '0';
            else
                if divider = 499999 then
                    divider <= (others => '0');
                    qhz <= not qhz;
                else
                    divider <= divider + 1;
                end
            end if;
        end if;
    end process;
    
    hz_out <= qhz;

    -- 0 to 9999 counter with Pause/Play (Asynchronous Reset)
    process(qhz, clr)
    begin
        if clr = '0' then
            data <= (others => '0');
        elsif rising_edge(qhz) then
            if PA_PL = '1' then
                if data = 9999 then
                    data <= (others => '0');
                else
                    data <= data + 1;
                end
            end if;
        end if;
    end process;

    -- Output the raw count as a 14-bit vector
    count_out <= std_logic_vector(data);

end Behavioral;
