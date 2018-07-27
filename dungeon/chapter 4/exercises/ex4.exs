defmodule Sum do
  def up_to(0), do: 0
  def up_to(n), do: n + up_to(n-1)

  def optimised_up_to(n), do: accumulate(n, 0)
  defp accumulate(0, acc), do: acc
  defp accumulate(n, acc), do: accumulate(n-1, n+acc)
end

IO.puts Sum.up_to(9)
IO.puts Sum.optimised_up_to(9)

defmodule Math do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def optimised_sum(list), do: accumulate(list, 0)
  defp accumulate([], acc), do: acc
  defp accumulate([head | tail], acc), do: accumulate(tail, acc + head)
end

IO.puts Math.sum([1, 2, 3, 4, 5, 6, 7, 8, 9])
IO.puts Math.optimised_sum([1, 2, 3, 4, 5, 6, 7, 8, 9])



defmodule Sort do

  def descending([]), do: []
  def descending([a]), do: [a]
  def descending(list) do

    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    optimised_merge(descending(list_a), descending(list_b), [])
  end

  defp optimised_merge([], list_b, merged), do:  merged ++ list_b
  defp optimised_merge(list_a, [], merged), do: merged ++ list_a
  defp optimised_merge(list_a = [head_a | tail_a], list_b = [head_b | _], merged) when head_a >= head_b do
    optimised_merge(tail_a, list_b, merged ++ [head_a])
  end
  defp optimised_merge(list_a = [head_a | _], list_b = [head_b | tail_b], merged) when head_a < head_b do
    optimised_merge(list_a, tail_b, merged ++ [head_b])
  end
end

IO.inspect Sort.descending([9, 5, 1, 5, 4])
IO.inspect Sort.descending([2, 2, 3, 1])
IO.inspect Sort.descending(["c", "d", "a", "c"])
