defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.filter(&validate_item/1)
    |> Enum.count()
  end

  defp validate_item(value) do
    value
    |> Integer.parse()
    |> is_odd()
  end

  defp is_odd({value, ""}) when is_number(value), do: Integer.is_odd(value)

  defp is_odd(_value), do: false
end
