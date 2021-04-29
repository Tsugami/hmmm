defmodule MyElixir.DiscordBot do
  alias Alchemy.Client
  alias MyElixir.{Commands,Events}

  def start (bot_token) do
    run = Client.start(bot_token)
    use Commands
    use Events
    run
  end
end
