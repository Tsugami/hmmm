defmodule MyElixir.Events do
  use Alchemy.Events

  Events.on_ready(:inspect)
  def inspect(shard) do
    IO.puts "aoba, #{shard} shard ligou!"
  end
end