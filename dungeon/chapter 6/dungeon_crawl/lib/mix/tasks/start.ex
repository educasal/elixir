defmodule Mix.Tasks.Start do
  use Mix.Task

  def run(_), do: IO.puts DungeonCrawl.CLI.Main.start_game
end
