defmodule Leetcode.P009Test do
  use ExUnit.Case

  alias Leetcode.P009

  describe "is_palindrome/1" do
    test "with examples returns correct results" do
      assert P009.is_palindrome(121)
      refute P009.is_palindrome(-121)
      refute P009.is_palindrome(10)
    end
  end
end
