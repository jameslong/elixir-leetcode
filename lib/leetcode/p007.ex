defmodule Leetcode.P007 do
  @moduledoc """
  Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

  Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

  Constraints:

    -2^31 <= x <= 2^31 - 1

  """

  @max_int32 2_147_483_647
  @min_int32 -2_147_483_648

  @spec reverse(x :: integer) :: integer
  def reverse(x) do
    reversed =
      x
      |> Integer.digits()
      |> Enum.reverse()
      |> Integer.undigits()

    cond do
      reversed > @max_int32 -> 0
      reversed < @min_int32 -> 0
      true -> reversed
    end
  end
end
