defmodule Leetcode.P004Test do
  use ExUnit.Case

  alias Leetcode.P004

  describe "find_median_sorted_arrays/2" do
    test "with examples returns correct results" do
      assert P004.find_median_sorted_arrays([1, 3], [2]) == 2.0
      assert P004.find_median_sorted_arrays([1, 2], [3, 4]) == 2.5
    end
  end
end
