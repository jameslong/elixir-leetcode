defmodule Leetcode.P019Test do
  use ExUnit.Case
  alias Leetcode.P019
  alias Leetcode.P019.ListNode

  describe "remove_nth_from_end/2" do
    test "with examples returns correct results" do
      l1 = to_list_node([1, 2, 3, 4, 5])
      result = to_list_node([1, 2, 3, 5])
      assert P019.remove_nth_from_end(l1, 2) == result

      l1 = to_list_node([1])
      result = to_list_node([])
      assert P019.remove_nth_from_end(l1, 1) == result
    end
  end

  defp to_list_node([]), do: nil

  defp to_list_node([head | tail]) do
    %ListNode{val: head, next: to_list_node(tail)}
  end
end
