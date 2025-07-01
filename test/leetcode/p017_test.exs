defmodule Leetcode.P017Test do
  use ExUnit.Case
  alias Leetcode.P017

  describe "letter_combinations/1" do
    test "with examples returns correct results" do
      assert_equivalent(P017.letter_combinations("23"), [
        "ad",
        "ae",
        "af",
        "bd",
        "be",
        "bf",
        "cd",
        "ce",
        "cf"
      ])

      assert_equivalent(P017.letter_combinations(""), [])
      assert_equivalent(P017.letter_combinations("2"), ["a", "b", "c"])
    end
  end

  defp assert_equivalent(list_a, list_b) do
    assert Enum.sort(list_a) == Enum.sort(list_b)
  end
end
