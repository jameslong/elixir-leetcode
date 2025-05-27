defmodule Leetcode.P004 do
  @moduledoc """
  Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

  The overall run time complexity should be O(log (m+n)).

  Constraints:

    nums1.length == m
    nums2.length == n
    0 <= m <= 1000
    0 <= n <= 1000
    1 <= m + n <= 2000
    -106 <= nums1[i], nums2[i] <= 106

  """

  @spec find_median_sorted_arrays(nums1 :: [integer], nums2 :: [integer]) :: float
  def find_median_sorted_arrays(nums1, nums2) do
    merged = merge(nums1, nums2)
    median(merged)
  end

  defp merge(nums1, nums2), do: (nums1 ++ nums2) |> Enum.sort()

  defp median(nums) do
    len = length(nums)

    if rem(len, 2) == 0 do
      midl = Enum.at(nums, div(len, 2) - 1)
      midr = Enum.at(nums, div(len, 2))
      (midl + midr) / 2.0
    else
      Enum.at(nums, div(len, 2))
    end
  end
end
