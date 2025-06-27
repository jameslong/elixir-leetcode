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
      |> List.to_tuple()

    do_three_sum(nums, 0, tuple_size(nums), [])
  end

  defp do_three_sum(_nums, i, len, acc) when i > len - 3, do: acc

  defp do_three_sum(nums, i, len, acc) do
    if i == 0 or elem(nums, i - 1) != elem(nums, i) do
      acc = find_triplets(nums, i, i + 1, len - 1, acc)
      do_three_sum(nums, i + 1, len, acc)
    else
      do_three_sum(nums, i + 1, len, acc)
    end
  end

  defp find_triplets(_nums, _i, l, r, acc) when l >= r, do: acc

  defp find_triplets(nums, i, l, r, acc) do
    val_i = elem(nums, i)
    val_l = elem(nums, l)
    val_r = elem(nums, r)
    sum = val_i + val_l + val_r

    cond do
      sum > 0 ->
        r = shrink_from_right(nums, l, r - 1, val_r)
        find_triplets(nums, i, l, r, acc)

      sum < 0 ->
        l = grow_from_left(nums, l + 1, r, val_l)
        find_triplets(nums, i, l, r, acc)

      true ->
        acc = [[val_i, val_l, val_r] | acc]
        l = grow_from_left(nums, l + 1, r, val_l)
        r = shrink_from_right(nums, l, r - 1, val_r)

        find_triplets(nums, i, l, r, acc)
    end
  end

  defp shrink_from_right(nums, l, r, prev_val_r) do
    cond do
      r <= l or elem(nums, r) != prev_val_r -> r
      true -> shrink_from_right(nums, l, r - 1, prev_val_r)
    end
  end

  defp grow_from_left(nums, l, r, prev_val_l) do
    cond do
      l >= r or elem(nums, l) != prev_val_l -> l
      true -> grow_from_left(nums, l + 1, r, prev_val_l)
    end
  end
end
