defmodule Mc.Mock.ServerConnector do
  def send_message(_, %{}), do: {:ok, %{}}
end
