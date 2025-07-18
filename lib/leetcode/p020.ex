defmodule Leetcode.P020 do
  @moduledoc """
  Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

  An input string is valid if:

  Open brackets must be closed by the same type of brackets.
  Open brackets must be closed in the correct order.
  Every close bracket has a corresponding open bracket of the same type.

  Constraints:

    1 <= s.length <= 10^4
    s consists of parentheses only '()[]{}'

  """

  @spec is_valid(s :: String.t()) :: boolean
  def is_valid(s), do: match_brackets(s, [])

  defp match_brackets(<<?(, rest::binary>>, stack), do: match_brackets(rest, [?( | stack])
  defp match_brackets(<<?[, rest::binary>>, stack), do: match_brackets(rest, [?[ | stack])
  defp match_brackets(<<?{, rest::binary>>, stack), do: match_brackets(rest, [?{ | stack])

  defp match_brackets(<<?), rest::binary>>, [?( | stack]), do: match_brackets(rest, stack)
  defp match_brackets(<<?], rest::binary>>, [?[ | stack]), do: match_brackets(rest, stack)
  defp match_brackets(<<?}, rest::binary>>, [?{ | stack]), do: match_brackets(rest, stack)
  defp match_brackets("", []), do: true
  defp match_brackets(_, _), do: false
end
