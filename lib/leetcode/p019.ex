defmodule Leetcode.P019 do
  @moduledoc """
  Given the head of a linked list, remove the nth node from the end of the list and return its head.

  Constraints:

    The number of nodes in the list is sz.
    1 <= sz <= 30
    0 <= Node.val <= 100
    1 <= n <= sz

  """
  defmodule ListNode do
    @type t :: %__MODULE__{
            val: integer,
            next: ListNode.t() | nil
          }
    defstruct val: 0, next: nil
  end

  @spec remove_nth_from_end(head :: ListNode.t() | nil, n :: integer) :: ListNode.t() | nil
  def remove_nth_from_end(head, n), do: remove_nth(head, head, 0, n)

  defp remove_nth(nil, slow, _i, _n), do: slow.next

  defp remove_nth(fast, slow, i, n) when i >= n do
    %ListNode{val: slow.val, next: remove_nth(fast.next, slow.next, i + 1, n)}
  end

  defp remove_nth(fast, slow, i, n), do: remove_nth(fast.next, slow, i + 1, n)
end
