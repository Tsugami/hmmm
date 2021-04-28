defmodule MyElixir.Utils.EmbedValidator do
  alias Alchemy.Embed

  @valid_embed %{}

  def valid? (%Embed{} = embed) do
    embed
  end
end