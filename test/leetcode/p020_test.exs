defmodule Leetcode.P020Test do
  use ExUnit.Case
  alias Leetcode.P020

  describe "is_valid/1" do
    test "with examples returns correct results" do
      assert P020.is_valid("()") == true
      assert P020.is_valid("()[]{}") == true
      assert P020.is_valid("(]") == false
      assert P020.is_valid("([)]") == false
      assert P020.is_valid("{[]}") == true
    end
  end
end
