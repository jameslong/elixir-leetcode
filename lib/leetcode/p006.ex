defmodule Leetcode.P006 do
  @moduledoc """
  The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

  P   A   H   N
  A P L S I I G
  Y   I   R
  And then read line by line: "PAHNAPLSIIGYIR"

  Write the code that will take a string and make this conversion given a number of rows:

  string convert(string s, int numRows);

  Constraints:

    1 <= s.length <= 1000
    s consists of English letters (lower-case and upper-case), ',' and '.'.
    1 <= numRows <= 1000

  """

  @spec convert(s :: String.t(), num_rows :: integer) :: String.t()
  def convert(s, 1), do: s

  def convert(s, num_rows) do
    s =
      s
      |> String.to_charlist()
      |> List.to_tuple()

    cycle_len = 2 * num_rows - 2

    0..(num_rows - 1)
    |> Enum.map(fn row -> add_row(s, num_rows, cycle_len, row) end)
    |> IO.iodata_to_binary()
  end

  def add_row(s, num_rows, cycle_len, row), do: add_row(s, num_rows, cycle_len, row, 0, [])

  def add_row(s, _num_rows, cycle_len, row, cycle, acc)
      when row + cycle * cycle_len > tuple_size(s) - 1,
      do: Enum.reverse(acc)

  def add_row(s, num_rows, cycle_len, row, cycle, acc) do
    # Add the first character in the group
    index = row + cycle * cycle_len
    acc = [elem(s, index) | acc]

    # Add diagonal characters
    acc =
      if row > 0 and row < num_rows - 1 and (cycle + 1) * cycle_len - row < tuple_size(s) do
        index = (cycle + 1) * cycle_len - row
        [elem(s, index) | acc]
      else
        acc
      end

    add_row(s, num_rows, cycle_len, row, cycle + 1, acc)
  end
end
