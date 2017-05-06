defmodule Mc.Mock.RendererBridge do
  def show_menu(_renderer_id, %{}), do: :ok
  def pop_menu(_renderer_id), do: :ok
end
