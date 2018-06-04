defmodule RPG do
  def total_points(%{strength: strength, dexterity: dexterity, intelligence: intelligence}) do
    strength * 2 + (dexterity + intelligence) * 3
  end
end

IO.puts RPG.total_points(%{strength: 1, dexterity: 2, intelligence: 3})
