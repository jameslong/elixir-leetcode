defmodule Leetcode.P003Test do
  use ExUnit.Case

  alias Leetcode.P003

  describe "length_of_longest_substring/1" do
    test "with examples returns correct results" do
      assert P003.length_of_longest_substring("abcabcbb") == 3
      assert P003.length_of_longest_substring("bbbbb") == 1
      assert P003.length_of_longest_substring("pwwkew") == 3
    end
  end
end
