Dynamo.under_test(Webdemo.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Webdemo.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
