defmodule SocialyTest do
  use ExUnit.Case
  doctest Socialy

  test "greets the world" do
    assert Socialy.hello() == :world
  end
end
