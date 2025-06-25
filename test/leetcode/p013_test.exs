defmodule Leetcode.P013Test do
  use ExUnit.Case

  alias Leetcode.P013

  describe "roman_to_int/1" do
    test "with examples returns correct results" do
      assert P013.roman_to_int("I") == 1
      assert P013.roman_to_int("II") == 2
      assert P013.roman_to_int("III") == 3
      assert P013.roman_to_int("IV") == 4
      assert P013.roman_to_int("V") == 5
      assert P013.roman_to_int("VI") == 6
      assert P013.roman_to_int("VII") == 7
      assert P013.roman_to_int("VIII") == 8
      assert P013.roman_to_int("IX") == 9

      assert P013.roman_to_int("X") == 10
      assert P013.roman_to_int("XX") == 20
      assert P013.roman_to_int("XXX") == 30
      assert P013.roman_to_int("XL") == 40
      assert P013.roman_to_int("L") == 50
      assert P013.roman_to_int("LX") == 60
      assert P013.roman_to_int("LXX") == 70
      assert P013.roman_to_int("LXXX") == 80
      assert P013.roman_to_int("XC") == 90

      assert P013.roman_to_int("C") == 100
      assert P013.roman_to_int("CC") == 200
      assert P013.roman_to_int("CCC") == 300
      assert P013.roman_to_int("CD") == 400
      assert P013.roman_to_int("D") == 500
      assert P013.roman_to_int("DC") == 600
      assert P013.roman_to_int("DCC") == 700
      assert P013.roman_to_int("DCCC") == 800
      assert P013.roman_to_int("CM") == 900

      assert P013.roman_to_int("M") == 1000
      assert P013.roman_to_int("MM") == 2000
      assert P013.roman_to_int("MMM") == 3000

      assert P013.roman_to_int("LVIII") == 58
      assert P013.roman_to_int("MCMXCIV") == 1994
    end
  end
end
