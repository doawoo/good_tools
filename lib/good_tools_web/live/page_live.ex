defmodule GoodToolsWeb.PageLive do
  use GoodToolsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end

  @impl true
  def handle_event(_event, _payload, socket) do
    {:noreply, socket}
  end
end
