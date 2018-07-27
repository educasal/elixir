defmodule MyList do
  def min([]), do: nil
  def min([a]), do: a
  def min([a, b | tail]) when a <= b, do: find_min(a, tail)
  def min([a, b | tail]) when a > b, do: find_min(b, tail)

  defp find_min(x, []), do: x
  defp find_min(x, [head | tail]) when x <= head, do: find_min(x, tail)
  defp find_min(x, [head | tail]) when x > head, do: find_min(head, tail)

  def max([]), do: nil
  def max([a]), do: a
  def max([a, b | tail]) when a <= b, do: find_max(b, tail)
  def max([a, b | tail]) when a > b, do: find_max(a, tail)

  defp find_max(x, []), do: x
  defp find_max(x, [head | tail]) when x <= head, do: find_max(head, tail)
  defp find_max(x, [head | tail]) when x > head, do: find_max(x, tail)
end


IO.puts MyList.max([4, 2, 16, 9, 10])
IO.puts MyList.min([4, 2, 16, 9, 10])
