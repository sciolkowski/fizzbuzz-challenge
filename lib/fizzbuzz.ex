defmodule Fizzbuzz do
  def run(range \\ 1..100, map \\ %{3 => "Fizz", 5 => "Buzz"}), do: for x <- range, do: x |> fizzbuzz(map)

  defp fizzbuzz(x, map) do
    Map.keys(map)
    |> Enum.reduce([], &(fizz_or_buzz?(x, map, &1, &2)))
    |> maybe_remove_first?
    |> List.to_string
    |> IO.puts
  end

  defp fizz_or_buzz?(num, map, divider, acc) do
    rem(num, divider)
    |> maybe_fizzbuzz?(acc, map, divider, num)
  end

  defp maybe_remove_first?([elem]), do: [elem]
  defp maybe_remove_first?([head | tail] = list), do: if (head |> String.match?(~r/^\d+$/)), do: tail, else: list

  defp maybe_fizzbuzz?(0, [], map, divider, _num), do: [map[divider]]
  defp maybe_fizzbuzz?(0, acc, map, divider, _num), do: acc ++ [map[divider]]
  defp maybe_fizzbuzz?(_, [], _map, _divider, num), do: [num |> Integer.to_string]
  defp maybe_fizzbuzz?(_, acc, _map, _divider, _num), do: acc
end
