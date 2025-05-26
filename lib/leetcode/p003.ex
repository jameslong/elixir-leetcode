defmodule Leetcode.P003 do
  @moduledoc """
  Given a string s, find the length of the longest substring without duplicate characters.

  Constraints:

    0 <= s.length <= 5 * 104
    s consists of English letters, digits, symbols and spaces.

  """

  @spec length_of_longest_substring(s :: String.t()) :: integer
  def length_of_longest_substring(s), do: length_of_longest_substring(s, 0, 0, 0, %{})

  def length_of_longest_substring("", l, r, len, _seen), do: max(len, r - l)

  def length_of_longest_substring(<<char, rest::binary>>, l, r, len, seen) do
    case Map.get(seen, char) do
      c when is_nil(c) or c < l ->
        length_of_longest_substring(
          rest,
          l,
          r + 1,
          len,
          Map.put(seen, char, r)
        )

      c ->
        length_of_longest_substring(
          rest,
          c + 1,
          r + 1,
          max(len, r - l),
          Map.put(seen, char, r)
        )
    end
  end
end
