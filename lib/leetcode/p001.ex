defmodule Leetcode.P001 do
  @moduledoc """
  Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

  You may assume that each input would have exactly one solution, and you may not use the same element twice.

  You can return the answer in any order.

  Constraints:

    2 <= nums.length <= 104
    -109 <= nums[i] <= 109
    -109 <= target <= 109
    Only one valid answer exists.

  """

  def two_sum(nums, target), do: two_sum(nums, target, %{}, 0)

  def two_sum([], _target, _acc, _index), do: []

  def two_sum([num | rest], target, acc, index) do
    case Map.get(acc, target - num) do
      nil -> two_sum(rest, target, Map.put(acc, num, index), index + 1)
      complement_index -> [complement_index, index]
    end
  end
end
