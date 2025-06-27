defmodule Leetcode.P015 do
  @moduledoc """
  Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

  Notice that the solution set must not contain duplicate triplets.

  Constraints:

    3 <= nums.length <= 3000
    -10^5 <= nums[i] <= 10^5

  """

  @spec three_sum(nums :: [integer]) :: [[integer]]
  def three_sum(nums) do
    nums =
      nums
      |> Enum.sort()
      |> Enum.with_index()

    for {i, ind_i} <- nums,
        {j, ind_j} <- nums,
        {k, ind_k} <- nums,
        ind_i < ind_j and ind_j < ind_k and i + j + k == 0,
        uniq: true do
      [i, j, k]
    end
  end
end
