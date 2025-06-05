defmodule Leetcode.P006Test do
  use ExUnit.Case

  alias Leetcode.P006

  describe "convert/2" do
    test "with examples returns correct results" do
      assert P006.convert("A", 1) == "A"
      assert P006.convert("PAYPALISHIRING", 3) == "PAHNAPLSIIGYIR"
      assert P006.convert("PAYPALISHIRING", 4) == "PINALSIGYAHRPI"
    end
  end
end
