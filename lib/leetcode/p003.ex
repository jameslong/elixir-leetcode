defmodule Leetcode.P003 do
  @moduledoc """
  Given a string s, find the length of the longest substring without duplicate characters.

  Constraints:

    0 <= s.length <= 5 * 104
    s consists of English letters, digits, symbols and spaces.

  """

  @spec length_of_longest_substring(s :: String.t()) :: integer
  def length_of_longest_substring(s) do
    len = byte_size(s)
    shrink_left(s, len - 1, len - 1, 0, 0)
  end

  def shrink_left(_s, l, _r, _b, res) when l < 0, do: res

  def shrink_left(s, l, r, b, res) do
    char = :binary.at(s, l)
    b_char = Bitwise.bsl(1, char)

    if Bitwise.band(b, b_char) != 0 do
      shrink_right(s, l, r, char, b, res)
    else
      shrink_left(s, l - 1, r, Bitwise.bor(b, b_char), max(res, r - l + 1))
    end
  end

  def shrink_right(s, l, r, dupe_char, b, res) do
    char = :binary.at(s, r)

    if char == dupe_char do
      shrink_left(s, l - 1, r - 1, b, res)
    else
      shrink_right(s, l, r - 1, dupe_char, Bitwise.bxor(b, Bitwise.bsl(1, char)), res)
    end
  end
end
