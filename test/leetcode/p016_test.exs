defmodule LeetCode.P016Test do
  use ExUnit.Case
  alias LeetCode.P016

  describe "three_sum_closest/2" do
    test "with examples returns correct results" do
      assert P016.three_sum_closest([-1, 2, 1, -4], 1) == 2
      assert P016.three_sum_closest([0, 0, 0], 1) == 0
    end
  end
end
