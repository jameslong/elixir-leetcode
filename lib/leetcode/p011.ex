defmodule Leetcode.P011 do
  @moduledoc """
  You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

  Find two lines that together with the x-axis form a container, such that the container contains the most water.

  Return the maximum amount of water a container can store.

  Notice that you may not slant the container.

  Constraints:

    n == height.length
    2 <= n <= 105
    0 <= height[i] <= 104

  """

  @spec max_area(height :: [integer]) :: integer
  def max_area(height) do
    height_with_index = Enum.with_index(height)

    for {height_i, index_i} <- height_with_index,
        {height_j, index_j} <- height_with_index,
        index_i < index_j,
        reduce: 0 do
      acc -> max(acc, min(height_i, height_j) * (index_j - index_i))
    end
  end
end
