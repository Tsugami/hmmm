defmodule MyElixir do
  use Application

  alias MyElixir.DiscordBot

  def start(_type, _args) do
    case Application.fetch_env!(:discord_bot, :bot_token) do
      bot_token -> DiscordBot.start(bot_token)
      _ ->
        raise "TOKEN environment variable is not set"
    end
  end
end
