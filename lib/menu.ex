defmodule Mock.Menu do
  def get_menu_item(i), do: %{item_index: i, item_text: "item", on_select: fn->1 end}
  defp get_menu, do: %{items: [get_menu_item(1), get_menu_item(2)], meta_data: %{title: "title", request_text: "request"}}

  def start_link, do: {:ok, Process.spawn(fn->1 end, [])}
  def push_new_menu(_, _), do: get_menu()
  def push_new_menu(_), do: get_menu()
  def get_current_item_length, do: 2
  def pop_menu, do: get_menu()
  def go_back, do: get_menu()
  def go_forward, do: get_menu()
  def get_current, do: get_menu()
  def can_go_forward?, do: true
  def can_go_backward?, do: true
end
