defmodule MyElixir.Commands do
  use Alchemy.Cogs
  alias Alchemy.Client
  require Alchemy.Embed, as: Embed

  Cogs.def ping do
    old = Time.utc_now()
    {:ok, message} = Cogs.say("Pong!")
    time = Time.diff(Time.utc_now(), old, :millisecond)
    Client.edit_message(message, "Pong! :ping_pong: took **#{time} ms**")
  end

  Cogs.def embed do
    Cogs.say "amigão"
    %Embed{}
    |> Embed.title(String.duplicate("abc", 1))
    |> Embed.send("aa")
  end
end