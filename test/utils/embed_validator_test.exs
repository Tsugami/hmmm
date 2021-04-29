defmodule ElixirTest.Utils.EmbedValidatorTest do
  use ExUnit.Case
  alias Alchemy.Embed
  require Alchemy.Embed
  alias MyElixir.Utils.EmbedValidator
  doctest MyElixir.Utils.EmbedValidator

  defp build_embed do
    embed = %Embed{}
    Map.from_struct(embed)
  end

  test "should return the embed when is empty" do
    embed = build_embed()
    assert EmbedValidator.valid?(embed) == embed
  end
end
