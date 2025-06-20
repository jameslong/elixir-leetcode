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
  def is_match(s, p) do
    {result, _} = match(s, p, byte_size(s), byte_size(p), 0, 0, %{})
    result
  end

  defp match(s, p, s_len, p_len, i, j, memo) do
    case Map.get(memo, {i, j}) do
      nil ->
        {result, memo} = do_match(s, p, s_len, p_len, i, j, memo)
        {result, Map.put(memo, {i, j}, result)}

      result ->
        {result, memo}
    end
  end

  defp do_match(s, p, s_len, p_len, i, j, memo) do
    p_char = if j < p_len, do: :binary.at(p, j), else: nil
    p_next_char = if j + 1 < p_len, do: :binary.at(p, j + 1), else: nil
    s_char = if i < s_len, do: :binary.at(s, i), else: nil

    cond do
      # End of pattern
      j >= p_len ->
        {i >= s_len, memo}

      # *
      j + 1 < p_len and p_next_char == ?* ->
        {result, memo} = match(s, p, s_len, p_len, i, j + 2, memo)

        if result do
          {result, memo}
        else
          if i < s_len and matching_char?(p_char, s_char) do
            match(s, p, s_len, p_len, i + 1, j, memo)
          else
            {false, memo}
          end
        end

      # . / matching char
      i < s_len and matching_char?(p_char, s_char) ->
        match(s, p, s_len, p_len, i + 1, j + 1, memo)

      # No match
      true ->
        {false, memo}
    end
  end

  defp matching_char?(p_char, s_char), do: p_char == ?. or p_char == s_char
end
