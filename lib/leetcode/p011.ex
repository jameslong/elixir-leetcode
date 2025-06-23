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
    height = List.to_tuple(height)
    do_max_area(height, 0, tuple_size(height) - 1, 0)
  end

  defp do_max_area(_, l, r, max) when l >= r, do: max

  defp do_max_area(height, l, r, max) do
    height_l = elem(height, l)
    height_r = elem(height, r)
    max = max(max, min(height_l, height_r) * (r - l))

    if height_l < height_r do
      do_max_area(height, l + 1, r, max)
    else
      do_max_area(height, l, r - 1, max)
    end
  end
end
