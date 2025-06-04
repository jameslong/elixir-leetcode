defmodule Leetcode.P005Test do
  use ExUnit.Case

  alias Leetcode.P005

  describe "longest_palindrome/1" do
    test "with examples returns correct results" do
      assert P005.longest_palindrome("a") == "a"
      assert P005.longest_palindrome("babad") == "bab"
      assert P005.longest_palindrome("cbbd") == "bb"
    end
  end
end
