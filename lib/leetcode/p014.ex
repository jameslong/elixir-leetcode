defmodule Leetcode.P014 do
  @moduledoc """
  Write a function to find the longest common prefix string amongst an array of strings.

  If there is no common prefix, return an empty string "".

  Constraints:

    1 <= strs.length <= 200
    0 <= strs[i].length <= 200
    strs[i] consists of only lowercase English letters if it is non-empty.

  """

  @spec longest_common_prefix(strs :: [String.t()]) :: String.t()
  def longest_common_prefix(strs) do
    :binary.part(hd(strs), 0, :binary.longest_common_prefix(strs))
  end
end
