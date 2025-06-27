defmodule Leetcode.P015Test do
  use ExUnit.Case

  alias Leetcode.P015

  describe "three_sum/1" do
    test "with examples returns correct results" do
      assert P015.three_sum([-1, 0, 1, 2, -1, -4]) == [[-1, -1, 2], [-1, 0, 1]]
      assert P015.three_sum([0, 1, 1]) == []
      assert P015.three_sum([0, 0, 0]) == [[0, 0, 0]]
    end
  end
end
