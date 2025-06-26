defmodule Leetcode.P014Test do
  use ExUnit.Case

  alias Leetcode.P014

  describe "longest_common_prefix/1" do
    test "returns the longest common prefix for a list of strings" do
      assert P014.longest_common_prefix([""]) == ""
      assert P014.longest_common_prefix(["flower", "flow", "flight"]) == "fl"
      assert P014.longest_common_prefix(["dog", "racecar", "car"]) == ""
    end
  end
end
