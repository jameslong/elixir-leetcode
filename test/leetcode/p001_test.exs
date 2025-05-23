defmodule Leetcode.P001Test do
  use ExUnit.Case

  alias Leetcode.P001

  describe "two_sum/2" do
    test "with examples returns correct result" do
      assert P001.two_sum([2, 7, 11, 15], 9) == [0, 1]
      assert P001.two_sum([3, 2, 4], 6) == [1, 2]
      assert P001.two_sum([3, 3], 6) == [0, 1]
    end
  end
end
