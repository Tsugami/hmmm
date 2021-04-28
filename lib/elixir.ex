defmodule MyElixir do
  use Application

  alias Alchemy.Client
  alias MyElixir.{Commands,Events}

  @moduledoc """
  Documentation for `MyElixir`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> MyElixir.hello()
      :world

  """
  def hello do
    :world
  end

  def start(_type, _args) do
    connect_bot()
  end

  def connect_bot do
    run = Client.start("NTEyNjIzMDEwNTkxODAxMzU1.W-13YQ.-tsfHjk_uDATxM3PjmLIk7Xw6fw")
    use Commands
    use Events
    run
  end
end