defmodule ElixirTest.Utils.EmbedValidatorTest do
  use ExUnit.Case
  alias Alchemy.Embed
  alias MyElixir.Utils.EmbedValidator
  doctest MyElixir.Utils.EmbedValidator

  test "should return the embed whem is empty" do
    embed = %Embed{}
    assert EmbedValidator.valid?(embed) == embed
  end
end
