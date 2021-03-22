defmodule Solutions do
  @moduledoc false

  @doc """
  "turma de elixir formacao elixir de elixir"
  %{"turma" => 1, "de" => 2, "elixir" => 3, "formacao" => 1}
  """
  def get_words_occurrence(sentence) do
    sentence
    |> String.split(" ")
    |> Enum.frequencies
  end

  @doc """
  [1, 5, 0, 8, 10, 9], 19

  [4, 5]
  """
  def get_two_sum_index(integers_list, target) do
    Enum.with_index(integers_list) |>
    Enum.reduce_while([], fn {x,i},acc ->
      y = target - x
      case Enum.find_index(integers_list, &(&1 == y)) do
        nil -> {:cont, acc}
        j   -> {:halt, [i,j]}
      end
    end)
  end
end
