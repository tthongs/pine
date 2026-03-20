library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Stopwatch is
    Port (
        clk     : in  STD_LOGIC; -- System Clock (100MHz)
        clr     : in  STD_LOGIC; -- Active-low Reset
        PA_PL   : in  STD_LOGIC; -- Play/Pause (1 = Play, 0 = Pause)
        khz     : out STD_LOGIC; -- 1kHz Output for Multiplexing
        hz      : out STD_LOGIC; -- 100Hz Output (Centiseconds)
        segment : out STD_LOGIC_VECTOR (6 downto 0); -- 7-segment Cathodes
        anode   : out STD_LOGIC_VECTOR (3 downto 0)  -- 7-segment Anodes
    );
end Stopwatch;

architecture Behavioral of Stopwatch is
    signal qkhz, qhz : STD_LOGIC := '0';
    signal counter   : unsigned(15 downto 0) := (others => '0');
    signal count     : unsigned(18 downto 0) := (others => '0');
    signal data      : unsigned(13 downto 0) := (others => '0');
    signal driver    : unsigned(1 downto 0) := "00";

begin
    -- 1kHz clock divider (Synchronous Reset)
    -- 100MHz / (2 * 50,000) = 1kHz
    process(clk)
    begin
        if rising_edge(clk) then
            if clr = '0' then
                counter <= (others => '0');
                qkhz <= '0';
            else
                if counter = 49999 then
                    counter <= (others => '0');
                    qkhz <= not qkhz;
                else
                    counter <= counter + 1;
                end
            end if;
        end if;
    end process;
    khz <= qkhz;

    -- 100Hz clock divider (Synchronous Reset)
    -- 100MHz / (2 * 500,000) = 100Hz
    process(clk)
    begin
        if rising_edge(clk) then
            if clr = '0' then
                count <= (others => '0');
                qhz <= '0';
            else
                if count = 499999 then
                    count <= (others => '0');
                    qhz <= not qhz;
                else
                    count <= count + 1;
                end
            end if;
        end if;
    end process;
    hz <= qhz;

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

    -- Digit driver counter for multiplexing (Asynchronous Reset)
    process(qkhz, clr)
    begin
        if clr = '0' then
            driver <= "00";
        elsif rising_edge(qkhz) then
            driver <= driver + 1;
        end if;
    end process;

    -- Anode and segment multiplexer logic
    process(driver, data)
        variable temp_print : integer range 0 to 9;
    begin
        -- Anode selection and digit extraction
        case driver is
            when "00" =>
                anode <= "1110";
                temp_print := to_integer(data mod 10);
            when "01" =>
                anode <= "1101";
                temp_print := to_integer((data / 10) mod 10);
            when "10" =>
                anode <= "1011";
                temp_print := to_integer((data / 100) mod 10);
            when "11" =>
                anode <= "0111";
                temp_print := to_integer((data / 1000) mod 10);
            when others =>
                anode <= "1111";
                temp_print := 0;
        end case;

        -- 7-segment decoder (common anode)
        case temp_print is
            when 0 => segment <= "1000000";
            when 1 => segment <= "1111001";
            when 2 => segment <= "0100100";
            when 3 => segment <= "0110000";
            when 4 => segment <= "0011001";
            when 5 => segment <= "0010010";
            when 6 => segment <= "0000010";
            when 7 => segment <= "1111000";
            when 8 => segment <= "0000000";
            when 9 => segment <= "0010000";
            when others => segment <= "1111111";
        end case;
    end process;

end Behavioral;
