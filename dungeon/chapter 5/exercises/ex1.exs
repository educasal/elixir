defmodule EnchanterStore do

  @enchanter_name "Edwin"

  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing option", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
    ]
  end

  defp enchant(item = %{magic: true}), do: item
  defp enchant(item) do
    %{
      title: "#{@enchanter_name}'s #{item.title}'",
      price: item.price * 3,
      magic: true
    }
  end

  def enchant_for_sale(items) do
    Enum.map(items, &enchant/1)
  end
end

IO.inspect EnchanterStore.enchant_for_sale(EnchanterStore.test_data)
