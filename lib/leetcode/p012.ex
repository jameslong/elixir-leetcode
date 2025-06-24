defmodule Leetcode.P012 do
  @moduledoc """
  Seven different symbols represent Roman numerals with the following values:

  Symbol	Value
  I	1
  V	5
  X	10
  L	50
  C	100
  D	500
  M	1000
  Roman numerals are formed by appending the conversions of decimal place values from highest to lowest. Converting a decimal place value into a Roman numeral has the following rules:

  If the value does not start with 4 or 9, select the symbol of the maximal value that can be subtracted from the input, append that symbol to the result, subtract its value, and convert the remainder to a Roman numeral.
  If the value starts with 4 or 9 use the subtractive form representing one symbol subtracted from the following symbol, for example, 4 is 1 (I) less than 5 (V): IV and 9 is 1 (I) less than 10 (X): IX. Only the following subtractive forms are used: 4 (IV), 9 (IX), 40 (XL), 90 (XC), 400 (CD) and 900 (CM).
  Only powers of 10 (I, X, C, M) can be appended consecutively at most 3 times to represent multiples of 10. You cannot append 5 (V), 50 (L), or 500 (D) multiple times. If you need to append a symbol 4 times use the subtractive form.
  Given an integer, convert it to a Roman numeral.

  Constraints:

    1 <= num <= 3999

  """

  @spec int_to_roman(num :: integer) :: String.t()
  def int_to_roman(num) do
    thousands(div(num, 1000)) <>
      hundreds(div(rem(num, 1000), 100)) <>
      tens(div(rem(num, 100), 10)) <>
      digit(rem(num, 10))
  end

  defp digit(0), do: ""
  defp digit(1), do: "I"
  defp digit(2), do: "II"
  defp digit(3), do: "III"
  defp digit(4), do: "IV"
  defp digit(5), do: "V"
  defp digit(6), do: "VI"
  defp digit(7), do: "VII"
  defp digit(8), do: "VIII"
  defp digit(9), do: "IX"

  defp tens(0), do: ""
  defp tens(1), do: "X"
  defp tens(2), do: "XX"
  defp tens(3), do: "XXX"
  defp tens(4), do: "XL"
  defp tens(5), do: "L"
  defp tens(6), do: "LX"
  defp tens(7), do: "LXX"
  defp tens(8), do: "LXXX"
  defp tens(9), do: "XC"

  defp hundreds(0), do: ""
  defp hundreds(1), do: "C"
  defp hundreds(2), do: "CC"
  defp hundreds(3), do: "CCC"
  defp hundreds(4), do: "CD"
  defp hundreds(5), do: "D"
  defp hundreds(6), do: "DC"
  defp hundreds(7), do: "DCC"
  defp hundreds(8), do: "DCCC"
  defp hundreds(9), do: "CM"

  defp thousands(0), do: ""
  defp thousands(1), do: "M"
  defp thousands(2), do: "MM"
  defp thousands(3), do: "MMM"
end
