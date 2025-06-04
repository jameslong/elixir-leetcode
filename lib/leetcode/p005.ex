defmodule Leetcode.P005 do
  @moduledoc """
  Given a string s, return the longest palindromic substring in s.

  Constraints:

    1 <= s.length <= 1000
    s consist of only digits and English letters.

  """

  @spec longest_palindrome(s :: String.t()) :: String.t()
  def longest_palindrome(s) do
    s
    |> String.to_charlist()
    |> longest_palindrome([])
  end

  defp longest_palindrome([], acc), do: List.to_string(acc)

  defp longest_palindrome(list = [_h | t], acc) do
    current = palindrome_starting_at(Enum.reverse(list))

    if length(current) > length(acc) do
      longest_palindrome(t, current)
    else
      longest_palindrome(t, acc)
    end
  end

  defp palindrome_starting_at([]), do: []

  defp palindrome_starting_at(s = [_ | t]) do
    if palindrome?(s) do
      s
    else
      palindrome_starting_at(t)
    end
  end

  defp palindrome?(chars), do: chars == Enum.reverse(chars)
end
