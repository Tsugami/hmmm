defmodule ElixirTest.Utils.EmbedValidatorTest do
  use ExUnit.Case
  alias Alchemy.Embed
  require Alchemy.Embed
  alias MyElixir.Utils.EmbedValidator
  doctest MyElixir.Utils.EmbedValidator

  defp embed_equal?(source, target) do
    Map.equal?(to_map(source), to_map(target))
  end

  defp to_map (struct) do
    if is_struct(struct) do
      Map.from_struct(struct)
    else
      struct
    end
  end


  test "should return the embed when is empty" do
    embed = %Embed{}
    assert embed_equal?(EmbedValidator.valid?(embed), embed)
  end

  test "should return the embed with title" do
    title_embed = %Embed{ title: "valid_title" }
    assert embed_equal?(EmbedValidator.valid?(title_embed), title_embed)
  end

  test "should trigger an error when title is not string" do
    {:error, _reason} = EmbedValidator.valid?(%Embed{ title: 1 })
    {:error, _reason} = EmbedValidator.valid?(%Embed{ title: :test })
    {:error, _reason} = EmbedValidator.valid?(%Embed{ title: %{} })
  end

  test "should trigger an error when title is must great" do
    big_title = String.duplicate("invalid_title", 400)
    {:error, _reason} = EmbedValidator.valid?(%Embed{ title: big_title })
  end
end
