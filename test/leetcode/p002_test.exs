defmodule Leetcode.P002Test do
  use ExUnit.Case

  alias Leetcode.P002
  alias Leetcode.P002.ListNode

  describe "add_two_numbers/2" do
    test "with examples returns correct results" do
      l1 = to_list_node([2, 4, 3])
      l2 = to_list_node([5, 6, 4])
      result = to_list_node([7, 0, 8])
      assert P002.add_two_numbers(l1, l2) == result

      l1 = to_list_node([0])
      l2 = to_list_node([0])
      result = to_list_node([0])
      assert P002.add_two_numbers(l1, l2) == result

      l1 = to_list_node([9, 9, 9, 9, 9, 9, 9])
      l2 = to_list_node([9, 9, 9, 9])
      result = to_list_node([8, 9, 9, 9, 0, 0, 0, 1])
      assert P002.add_two_numbers(l1, l2) == result

      l1 = to_list_node([9, 9, 9, 9])
      l2 = to_list_node([9, 9, 9, 9, 9, 9, 9])
      result = to_list_node([8, 9, 9, 9, 0, 0, 0, 1])
      assert P002.add_two_numbers(l1, l2) == result
    end

    defp to_list_node([]), do: nil

    defp to_list_node([head | tail]) do
      %ListNode{val: head, next: to_list_node(tail)}
    end
  end
end
