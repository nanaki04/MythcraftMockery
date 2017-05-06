defmodule Mc.Mock.RendererBridge do
  def show_menu(_client_id, %{}), do: :ok
  def pop_menu(_client_id), do: :ok
  def show_error(_client_id, error_message), do: error_message
end
