defmodule Leetcode.P008 do
  @moduledoc """
  Implement the myAtoi(string s) function, which converts a string to a 32-bit signed integer.

  The algorithm for myAtoi(string s) is as follows:

  Whitespace: Ignore any leading whitespace (" ").
  Signedness: Determine the sign by checking if the next character is '-' or '+', assuming positivity if neither present.
  Conversion: Read the integer by skipping leading zeros until a non-digit character is encountered or the end of the string is reached. If no digits were read, then the result is 0.
  Rounding: If the integer is out of the 32-bit signed integer range [-231, 231 - 1], then round the integer to remain in the range. Specifically, integers less than -231 should be rounded to -231, and integers greater than 231 - 1 should be rounded to 231 - 1.
  Return the integer as the final result.

  Constraints:

    0 <= s.length <= 200
    s consists of English letters (lower-case and upper-case), digits (0-9), ' ', '+', '-', and '.'.

  """

  @max_int 2_147_483_647
  @min_int -2_147_483_648

  @spec my_atoi(s :: String.t()) :: integer
  def my_atoi(s) do
    s = trim(s)
    {sign, rest} = pop_sign(s)
    num = read_num(rest)

    case sign do
      1 -> min(@max_int, num)
      _ -> max(@min_int, -num)
    end
  end

  def trim(<<" ", rest::binary>>), do: trim(rest)
  def trim(s), do: s

  def pop_sign(<<"-", rest::binary>>), do: {-1, rest}
  def pop_sign(<<"+", rest::binary>>), do: {1, rest}
  def pop_sign(s), do: {1, s}

  def read_num(s), do: read_num(s, 0)
  def read_num(<<c, rest::binary>>, num) when c in ?0..?9, do: read_num(rest, num * 10 + c - ?0)
  def read_num(_, num), do: num
end
