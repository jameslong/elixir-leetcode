defmodule Leetcode.P012Test do
  use ExUnit.Case

  alias Leetcode.P012

  describe "int_to_roman/1" do
    test "with examples returns correct results" do
      assert P012.int_to_roman(1) == "I"
      assert P012.int_to_roman(2) == "II"
      assert P012.int_to_roman(3) == "III"
      assert P012.int_to_roman(4) == "IV"
      assert P012.int_to_roman(5) == "V"
      assert P012.int_to_roman(6) == "VI"
      assert P012.int_to_roman(7) == "VII"
      assert P012.int_to_roman(8) == "VIII"
      assert P012.int_to_roman(9) == "IX"

      assert P012.int_to_roman(10) == "X"
      assert P012.int_to_roman(20) == "XX"
      assert P012.int_to_roman(30) == "XXX"
      assert P012.int_to_roman(40) == "XL"
      assert P012.int_to_roman(50) == "L"
      assert P012.int_to_roman(60) == "LX"
      assert P012.int_to_roman(70) == "LXX"
      assert P012.int_to_roman(80) == "LXXX"
      assert P012.int_to_roman(90) == "XC"

      assert P012.int_to_roman(100) == "C"
      assert P012.int_to_roman(200) == "CC"
      assert P012.int_to_roman(300) == "CCC"
      assert P012.int_to_roman(400) == "CD"
      assert P012.int_to_roman(500) == "D"
      assert P012.int_to_roman(600) == "DC"
      assert P012.int_to_roman(700) == "DCC"
      assert P012.int_to_roman(800) == "DCCC"
      assert P012.int_to_roman(900) == "CM"

      assert P012.int_to_roman(1000) == "M"
      assert P012.int_to_roman(2000) == "MM"
      assert P012.int_to_roman(3000) == "MMM"

      assert P012.int_to_roman(58) == "LVIII"
      assert P012.int_to_roman(1994) == "MCMXCIV"
      assert P012.int_to_roman(3749) == "MMMDCCXLIX"
    end
  end
end
