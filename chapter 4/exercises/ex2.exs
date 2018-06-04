defmodule GeneralStore do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing option", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
    ]
  end

  def filter_items([], magic: _), do: []
  def filter_items([head = %{magic: head_magic} | tail], magic: filter_magic) when head_magic == filter_magic do
    [head | filter_items(tail, magic: filter_magic)]
  end
  def filter_items([_ | tail], magic: magic) do
    filter_items(tail, magic: magic)
  end
end

IO.inspect GeneralStore.filter_items(GeneralStore.test_data, magic: true)
IO.inspect GeneralStore.filter_items(GeneralStore.test_data, magic: false)
