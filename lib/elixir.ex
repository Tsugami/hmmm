defmodule MyElixir do
  use Application

  alias Alchemy.Client
  alias MyElixir.{Commands,Events}

  def start(_type, _args) do
    connect_bot()
  end

  def connect_bot do
    bot_token = Application.fetch_env!(:discord_bot, :bot_token)
    run = Client.start(bot_token)
    use Commands
    use Events
    run
  end
end
