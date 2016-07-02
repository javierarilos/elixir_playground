defmodule Sum do
  def sum_list([head | tail], accumulator), do: sum_list(tail, head + accumulator)
  def sum_list([], accumulator), do: accumulator

  def double_each([head | tail]), do: [head*2 | double_each(tail)]
  def double_each([]), do: []
end

IO.puts Sum.sum_list([1, 2, 3], 0) #=> 6
IO.puts Sum.double_each([1, 2, 3]) #=> [2, 4, 6]
IO.puts "Doing the same with built-in Enum module..."
IO.puts Enum.reduce([1, 2, 3], 0, fn(x, acc) -> x + acc end)
IO.puts Enum.map([1, 2, 3], fn(x) -> 2*x end)
