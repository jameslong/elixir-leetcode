defmodule Leetcode.P011Test do
  use ExUnit.Case

  alias Leetcode.P011

  describe "max_area/1" do
    test "with examples returns correct results" do
      assert P011.max_area([1, 8, 6, 2, 5, 4, 8, 3, 7]) == 49
      assert P011.max_area([1, 1]) == 1
    end
  end
end
