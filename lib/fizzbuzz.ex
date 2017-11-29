defmodule Fizzbuzz do
  def run, do: for x <- 0..100, do: x |> fizzbuzz

  defp fizzbuzz(x), do: fizz_or_buzz?(x, [rem(x, 3), rem(x, 5)]) |> IO.puts

  defp fizz_or_buzz?(x, [0,0]), do: "#{x} - FizzBuzz"
  defp fizz_or_buzz?(x, [_,0]), do: "#{x} - Buzz"
  defp fizz_or_buzz?(x, [0,_]), do: "#{x} - Fizz"
  defp fizz_or_buzz?(x, [_,_]), do: x
end
