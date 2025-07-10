defmodule Leetcode.P002 do
  @moduledoc """
  You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

  You may assume the two numbers do not contain any leading zero, except the number 0 itself.

  Constraints:

    The number of nodes in each linked list is in the range [1, 100].
    0 <= Node.val <= 9
    It is guaranteed that the list represents a number that does not have leading zeros.

  """

  defmodule ListNode do
    @type t :: %__MODULE__{
            val: integer,
            next: ListNode.t() | nil
          }
    defstruct val: 0, next: nil
  end

  @spec add_two_numbers(l1 :: ListNode.t() | nil, l2 :: ListNode.t() | nil) :: ListNode.t() | nil
  def add_two_numbers(l1, l2), do: add_two(l1, l2, 0)

  defp add_two(nil, nil, 0), do: nil
  defp add_two(nil, nil, carry), do: %ListNode{val: carry}
  defp add_two(%ListNode{} = l1, nil, carry), do: add_one(l1, carry)
  defp add_two(nil, %ListNode{} = l2, carry), do: add_one(l2, carry)

  defp add_two(%ListNode{val: val_1, next: next_1}, %ListNode{val: val_2, next: next_2}, carry) do
    sum = val_1 + val_2 + carry
    %ListNode{val: rem(sum, 10), next: add_two(next_1, next_2, div(sum, 10))}
  end

  defp add_one(nil, 0), do: nil
  defp add_one(nil, carry), do: %ListNode{val: carry}

  defp add_one(%ListNode{val: val, next: next}, carry) do
    sum = val + carry
    %ListNode{val: rem(sum, 10), next: add_one(next, div(sum, 10))}
  end
end
