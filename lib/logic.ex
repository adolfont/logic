defmodule Logic do
  @moduledoc """
  A library for propositional classical logic
  """

  def my_and(true, true), do: true
  def my_and(false, true), do: false
  def my_and(true, false), do: false
  def my_and(false, false), do: false
  def my_and(_, _), do: :error

  @doc """
  Example of a macro
  """
  defmacro lalalaland(left, right) do
    quote do
      my_and(unquote(left), unquote(right))
    end
  end

  @doc """
  Redefining the and operator
  """
  def x and y do
    my_and(x, y)
  end
end
