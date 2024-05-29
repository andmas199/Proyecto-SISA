library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

------------------------------------------------------------------
--  The instructions are coded using the op_group and the op signals --
--         The following table shows all the groups:                --
------------------------------------------------------------------

------------------------------------------------------------------
-- op \ op_group  |    00    |    01    |    10    |     11     --
------------------------------------------------------------------
-- 000            |    AND   |   CMPLT  |   MOVI   |    MUL     --
------------------------------------------------------------------
-- 001            |    OR    |   CMPLE  |   MOVHI  |    MULH    --
------------------------------------------------------------------
-- 010            |    XOR   |    --    |    --    |    MULHU   --
------------------------------------------------------------------
-- 011            |    NOT   |   CMPEQ  |    --    |     --     --
------------------------------------------------------------------
-- 100            |    ADD   |   CMPLTU |    --    |    DIV     --
------------------------------------------------------------------
-- 101            |    SUB   |   CMPLEU |    --    |    DIVU    --
------------------------------------------------------------------
-- 110            |    SHA   |    --    |    --    |     X      --
------------------------------------------------------------------
-- 111            |    SHL   |    --    |    --    |     --     --
------------------------------------------------------------------

entity alu is
  port (
    x        : in    std_logic_vector(15 downto 0);
    y        : in    std_logic_vector(15 downto 0);
    op_group : in    std_logic_vector(1 downto 0);
    op       : in    std_logic_vector(2 downto 0);
    w        : out   std_logic_vector(15 downto 0);
    z        : out   std_logic;
    div_zero : out   std_logic
  );
end entity alu;

architecture structure of alu is

begin

  process (x, y, op_group, op) is

    variable output  : std_logic_vector(15 downto 0);
    variable alu_sel : std_logic_vector(4 downto 0);
    variable ltu     : std_logic;
    variable lt      : std_logic;
    variable eq      : std_logic;
    variable mul     : std_logic_vector(31 downto 0);

  begin

    alu_sel := op_group & op;

    if (unsigned(x) < unsigned(y)) then
      ltu := '1';
    else
      ltu := '0';
    end if;

    if (signed(x) < signed(y)) then
      lt := '1';
    else
      lt := '0';
    end if;

    if (x = y) then
      eq := '1';
    else
      eq := '0';
    end if;

    case alu_sel is

      -- Logic and Arithmetic Instructions
      when "00000" =>

        output := x and y;

      when "00001" =>

        output := x or y;

      when "00010" =>

        output := x xor y;

      when "00011" =>

        output := not x;

      when "00100" =>

        output := std_logic_vector(unsigned(x) + unsigned(y));

      when "00101" =>

        output := std_logic_vector(unsigned(x) - unsigned(y));

      when "00110" =>

        if (y(4) = '0') then
          output := std_logic_vector(shift_left(signed(x), natural(to_integer(unsigned(y(4 downto 0))))));
        else
          output := std_logic_vector(shift_right(signed(x), natural(to_integer(abs(signed(y(4 downto 0)))))));
        end if;

      when "00111" =>

        if (y(4) = '0') then
          output := std_logic_vector(shift_left(unsigned(x), natural(to_integer(unsigned(y(4 downto 0))))));
        else
          output := std_logic_vector(shift_right(unsigned(x), natural(to_integer(abs(signed(y(4 downto 0)))))));
        end if;

      -- Comparison instructions
      when "01000" =>

        output := "000000000000000" & lt;

      when "01001" =>

        output := "000000000000000" & (lt or eq);

      when "01011" =>

        output := "000000000000000" & eq;

      when "01100" =>

        output := "000000000000000" & ltu;

      when "01101" =>

        output := "000000000000000" & (ltu or eq);

      -- Move instructions
      when "10001" =>

        output := y(7 downto 0) & x(7 downto 0);

      -- Arithmetic extension(MUL and DIV)
      when "11000" =>

        mul    := std_logic_vector(signed(x) * signed(y));
        output := MUL(15 downto 0);

      when "11001" =>

        mul    := std_logic_vector(signed(x) * signed(y));
        output := MUL(31 downto 16);

      when "11010" =>

        mul    := std_logic_vector(unsigned(x) * unsigned(y));
        output := MUL(31 downto 16);

      when "11100" =>

        if (y /= x"0000") then
          output := std_logic_vector(signed(x) / signed(y));
        else
          output := x"0000";                                                                                     -- TODO: Exception!
        end if;

      when "11101" =>

        if (y /= x"0000") then
          output := std_logic_vector(unsigned(x) / unsigned(y));
        else
          output := x"0000";                                                                                     -- TODO: Exception!
        end if;

      -- Special
      when "11110" =>

        output := x;

      when OTHERS =>

        output := y;

    end case;

    if (unsigned(y) = x"00") then
      z <= '1';
    else
      z <= '0';
    end if;

    if (op_group = "11" and (op = "100" or op = "101") and y = "0000000000000000") then
      div_zero <= '1';
    else
      div_zero <= '0';
    end if;

    w <= output;

  end process;

end architecture structure;
