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
  def add_two_numbers(l1, l2), do: add(l1, l2, 0)

  defp add(nil, nil, 0), do: nil

  defp add(nil, nil, carry), do: %ListNode{val: carry}

  defp add(nil, %ListNode{val: l2_val, next: l2_next}, carry) do
    sum = l2_val + carry
    digit = rem(sum, 10)
    carry = div(sum, 10)

    %ListNode{val: digit, next: add(nil, l2_next, carry)}
  end

  defp add(l1, nil, val), do: add(nil, l1, val)

  defp add(%ListNode{val: l1_val, next: l1_next}, %ListNode{val: l2_val, next: l2_next}, carry) do
    sum = l1_val + l2_val + carry
    digit = rem(sum, 10)
    carry = div(sum, 10)

    %ListNode{val: digit, next: add(l1_next, l2_next, carry)}
  end
end
