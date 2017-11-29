# Fizzbuzz

**Parametrized version od FizzBuzz**

Run `iex -S mix` and:

1. Run `Fizzbuzz.run` to start FizzBuzz with defaults: range `1..100` and `3 - Fizz`, `5 - Buzz`.
2. Run e.g. `Fizzbuzz.run(1..20, %{2 => "Fizz", 4 => "Buzz", 5 => "Duzz", 10 => "Sazz"})` to print something like "FizzBuzzDuzzSazz" for number 20, and analogical for other numbers
3. You can benchmark results with Benchmark module: 
```
Benchmark.measure(fn -> Fizzbuzz.run(1..200000, %{2 => "Fizz", 4 => "Buzz", 5 => "Duzz", 10 => "Sazz"}) end)
```
