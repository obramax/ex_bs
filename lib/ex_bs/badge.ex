defmodule ExBs.Badge do
  @moduledoc """
  Helpers for building Bootstrap badges.

  """
  alias Phoenix.HTML.Tag

  @badge_types ExBs.Config.bootstrap(:badge_types)

  Enum.each(@badge_types, fn {type, _class} ->
    def unquote(type)(text, opts \\ []) do
      badge(unquote(type), text, opts)
    end
  end)

  def badge(type, text, opts \\ []) do
    {_, opts} =
      opts
      |> Keyword.get_and_update(:class, fn current_value ->
        {nil, ~s(#{class_for(type)} #{current_value})}
      end)

    Tag.content_tag(:div, text, opts)
  end

  defp class_for(key), do: @badge_types[key]
end
