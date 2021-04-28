defmodule MyElixir.Utils.EmbedValidator do
  alias Alchemy.Embed
  alias Skooma.Validators

  def valid? (embed) do
    case Skooma.valid?(embed, valid_embed_schema()) do
      {:error, reason} -> {:error, reason}
      :ok -> embed
    end
  end

  defp valid_embed_schema do
    %{
      title: [:string, :not_required, Validators.max_length(256)],
    }
  end
end