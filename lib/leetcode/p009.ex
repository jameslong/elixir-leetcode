defmodule Leetcode.P009 do
  @moduledoc """
  Given an integer x, return true if x is a palindrome, and false otherwise.

  Constraints:

    -2^31 <= x <= 2^31 - 1
  """

  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) when x < 0, do: false
  def is_palindrome(x) when rem(x, 10) == 0, do: x == 0
  def is_palindrome(x), do: reverse_half(x, 0)

  defp reverse_half(x, reversed) when x < reversed, do: x == div(reversed, 10)
  defp reverse_half(x, x), do: true
  defp reverse_half(x, reversed), do: reverse_half(div(x, 10), reversed * 10 + rem(x, 10))
end
