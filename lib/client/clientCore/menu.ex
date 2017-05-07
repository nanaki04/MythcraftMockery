defmodule Mc.Mock.Menu do
  defstruct items: [], title: "Mock Menu 1", description: "Select an item"

  def reduce_items(menu, state, lambda) do
    Enum.reduce(["Item 1", "Item 2", "Item 3"], state, fn(text, state) ->
      lambda.(state, text, &__MODULE__.on_select_mock/1)
    end)
  end

  def get_title(menu), do: menu.title
  def get_description(menu), do: menu.description

  def on_select_mock(client_id) do
    IO.puts("Menu Selected: " <> client_id) 
  end
end
