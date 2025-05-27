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
    nums1
    |> merge(nums2, [])
    |> median()
  end

  defp merge([], acc), do: acc

  defp merge([h | t], acc), do: merge(t, [h | acc])

  defp merge(nums1, [], acc), do: merge(nums1, acc)

  defp merge([], nums2, acc), do: merge(nums2, acc)

  defp merge([h1 | t1] = nums1, [h2 | t2] = nums2, acc) do
    if h1 <= h2 do
      merge(t1, nums2, [h1 | acc])
    else
      merge(nums1, t2, [h2 | acc])
    end
  end

  defp median(nums) do
    nums_tuple = List.to_tuple(nums)
    len = tuple_size(nums_tuple)
    half_len = div(len, 2)

    if rem(len, 2) == 0 do
      (elem(nums_tuple, half_len - 1) + elem(nums_tuple, half_len)) / 2
    else
      elem(nums_tuple, half_len)
    end
  end
end
