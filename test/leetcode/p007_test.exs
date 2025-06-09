defmodule Leetcode.P007Test do
  use ExUnit.Case

  alias Leetcode.P007

  describe "reverse/1" do
    test "with examples returns correct results" do
      assert P007.reverse(123) == 321
      assert P007.reverse(-123) == -321
      assert P007.reverse(120) == 21
      assert P007.reverse(2_147_483_647) == 0
      assert P007.reverse(-2_147_483_647) == 0
    end
  end
end
