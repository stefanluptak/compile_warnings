defmodule FailingApp do
  def hello do
    Foo.non_existing_function()
  end
end
