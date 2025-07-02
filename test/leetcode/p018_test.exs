defmodule Leetcode.P018Test do
  use ExUnit.Case
  alias Leetcode.P018

  describe "four_sum/2" do
    test "with examples returns correct results" do
      assert P018.four_sum([1, 0, -1, 0, -2, 2], 0) == [
               [-1, 0, 0, 1],
               [-2, -1, 1, 2],
               [-2, 0, 0, 2]
             ]

      assert P018.four_sum([2, 2, 2, 2, 2], 8) == [[2, 2, 2, 2]]

      assert P018.four_sum([1, -2, -5, -4, -3, 3, 3, 5], -11) == [[-5, -4, -3, 1]]
    end
  end
end
