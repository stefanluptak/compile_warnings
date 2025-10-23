defmodule FailingAppTest do
  use ExUnit.Case
  doctest FailingApp

  test "greets the world" do
    assert FailingApp.hello() == :world
  end
end
