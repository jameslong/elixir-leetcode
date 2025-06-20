defmodule Leetcode.P010 do
  @moduledoc """
  Given an input string s and a pattern p, implement regular expression matching with support for '.' and '*' where:

  '.' Matches any single character.​​​​
  '*' Matches zero or more of the preceding element.
  The matching should cover the entire input string (not partial).

  Constraints:

    1 <= s.length <= 20
    1 <= p.length <= 20
    s contains only lowercase English letters.
    p contains only lowercase English letters, '.', and '*'.
    It is guaranteed for each appearance of the character '*', there will be a previous valid character to match.

  """

  @spec is_match(s :: String.t(), p :: String.t()) :: boolean
  def is_match(s, p), do: do_match(s, p)

  defp do_match("", ""), do: true
  defp do_match(s, <<c, ?*, rest_p::binary>>), do: match_star(s, c, rest_p)
  defp do_match(s, p), do: match_char(s, p)

  defp match_char(<<c, rest_s::binary>>, <<c, rest_p::binary>>), do: do_match(rest_s, rest_p)
  defp match_char(<<_c, rest_s::binary>>, <<?., rest_p::binary>>), do: do_match(rest_s, rest_p)
  defp match_char(_, _), do: false

  defp match_star(_, ?., rest_p), do: do_match("", rest_p)
  defp match_star("", _c, rest_p), do: do_match("", rest_p)
  defp match_star(<<c, rest_s::binary>>, c, rest_p), do: match_star(rest_s, c, rest_p)
end
