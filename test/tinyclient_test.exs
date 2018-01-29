defmodule TinyClientTest do
  use ExUnit.Case
  doctest TinyClient

  test "greets the world" do
    assert TinyClient.hello() == :world
  end
end
