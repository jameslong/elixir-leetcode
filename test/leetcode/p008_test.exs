defmodule Leetcode.P008Test do
  use ExUnit.Case

  alias Leetcode.P008

  describe "my_atoi/1" do
    test "with examples returns correct results" do
      assert P008.my_atoi("42") == 42
      assert P008.my_atoi(" -042") == -42
      assert P008.my_atoi("1337c0d3") == 1337
      assert P008.my_atoi("0-1") == 0
      assert P008.my_atoi("words and 987") == 0
    end
  end
end
