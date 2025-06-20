defmodule Leetcode.P010Test do
  use ExUnit.Case

  alias Leetcode.P010

  describe "is_match/2" do
    test "with examples returns correct results" do
      assert P010.is_match("a", "a")
      assert P010.is_match("a", ".")
      refute P010.is_match("aa", "a")
      assert P010.is_match("aa", "a*")
      assert P010.is_match("ab", ".*")

      assert P010.is_match("aab", "c*a*b")
      assert P010.is_match("aaa", "a*a")
      refute P010.is_match("mississippi", "mis*is*p*.")
      assert P010.is_match("a", "a*b*")
      assert P010.is_match("aabcbcbcaccbcaabc", ".*a*aa*.*b*.c*.*a*")
    end
  end
end
