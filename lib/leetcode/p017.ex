defmodule Leetcode.P017 do
  @moduledoc """
  Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

  A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

  Constraints:application

    0 <= digits.length <= 4
    digits[i] is a digit in the range ['2', '9'].

  """

  @spec letter_combinations(digits :: String.t()) :: [String.t()]
  def letter_combinations(""), do: []

  def letter_combinations(<<digit>>), do: digit_to_letters(digit)

  def letter_combinations(<<digit_a, digit_b>>) do
    for a <- digit_to_letters(digit_a),
        b <- digit_to_letters(digit_b),
        do: a <> b
  end

  def letter_combinations(<<digit_a, digit_b, digit_c>>) do
    for a <- digit_to_letters(digit_a),
        b <- digit_to_letters(digit_b),
        c <- digit_to_letters(digit_c),
        do: a <> b <> c
  end

  def letter_combinations(<<digit_a, digit_b, digit_c, digit_d>>) do
    for a <- digit_to_letters(digit_a),
        b <- digit_to_letters(digit_b),
        c <- digit_to_letters(digit_c),
        d <- digit_to_letters(digit_d),
        do: a <> b <> c <> d
  end

  defp digit_to_letters(?2), do: ["a", "b", "c"]
  defp digit_to_letters(?3), do: ["d", "e", "f"]
  defp digit_to_letters(?4), do: ["g", "h", "i"]
  defp digit_to_letters(?5), do: ["j", "k", "l"]
  defp digit_to_letters(?6), do: ["m", "n", "o"]
  defp digit_to_letters(?7), do: ["p", "q", "r", "s"]
  defp digit_to_letters(?8), do: ["t", "u", "v"]
  defp digit_to_letters(?9), do: ["w", "x", "y", "z"]
end
