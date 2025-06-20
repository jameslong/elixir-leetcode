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
  defp do_match(_, ""), do: false
  defp do_match(s, <<_, ?*, _::binary>> = p), do: match_star(s, p)
  defp do_match(s, p), do: match_char(s, p)

  defp match_star("", <<_, ?*, rest_p::binary>>), do: do_match("", rest_p)

  defp match_star(<<c_s, rest_s::binary>> = s, <<c_p, ?*, rest_p::binary>> = p) do
    cond do
      do_match(s, rest_p) -> true
      c_p in [c_s, ?.] -> do_match(rest_s, p)
      true -> false
    end
  end

  defp match_char(<<c, rest_s::binary>>, <<c, rest_p::binary>>), do: do_match(rest_s, rest_p)
  defp match_char(<<_c, rest_s::binary>>, <<?., rest_p::binary>>), do: do_match(rest_s, rest_p)
  defp match_char(_, _), do: false
end
