defmodule Leetcode.P013 do
  @moduledoc """
  Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

  Symbol       Value
  I             1
  V             5
  X             10
  L             50
  C             100
  D             500
  M             1000
  For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

  Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

  I can be placed before V (5) and X (10) to make 4 and 9.
  X can be placed before L (50) and C (100) to make 40 and 90.
  C can be placed before D (500) and M (1000) to make 400 and 900.
  Given a roman numeral, convert it to an integer.

  Constraints:

    1 <= s.length <= 15
    s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
    It is guaranteed that s is a valid roman numeral in the range [1, 3999].
  """

  @spec roman_to_int(s :: String.t()) :: integer
  def roman_to_int(s), do: roman_to_int(s, 0)

  def roman_to_int("", sum), do: sum

  def roman_to_int("IX" <> rest, sum), do: roman_to_int(rest, sum + 9)
  def roman_to_int("IV" <> rest, sum), do: roman_to_int(rest, sum + 4)
  def roman_to_int("I" <> rest, acc), do: roman_to_int(rest, acc + 1)
  def roman_to_int("V" <> rest, acc), do: roman_to_int(rest, acc + 5)

  def roman_to_int("XC" <> rest, sum), do: roman_to_int(rest, sum + 90)
  def roman_to_int("XL" <> rest, sum), do: roman_to_int(rest, sum + 40)
  def roman_to_int("X" <> rest, acc), do: roman_to_int(rest, acc + 10)
  def roman_to_int("L" <> rest, acc), do: roman_to_int(rest, acc + 50)

  def roman_to_int("CM" <> rest, sum), do: roman_to_int(rest, sum + 900)
  def roman_to_int("CD" <> rest, sum), do: roman_to_int(rest, sum + 400)
  def roman_to_int("C" <> rest, acc), do: roman_to_int(rest, acc + 100)
  def roman_to_int("D" <> rest, acc), do: roman_to_int(rest, acc + 500)

  def roman_to_int("M" <> rest, acc), do: roman_to_int(rest, acc + 1000)
end
