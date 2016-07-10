values = [good: 1, avg: 2, bad: 3, good: 4]
IO.puts "Comprehensions can do pattern matching"
IO.puts inspect for {:good, n} <- values, do: n * n

multipleof3? = &(rem(&1, 3) == 0)
IO.puts "Comprehensions can use a fun to filter elements"
IO.puts inspect for n <- 0..11, multipleof3?.(n), do: n

IO.puts "Comprehensions can have nested generators, eg. cartesian product"
IO.puts inspect for i <- [:a, :b, :c], j <- [1, 2], do: {i, j}

IO.puts "Comprehensions can updte a given data structure"
IO.puts inspect for {key, val} <- %{"a" => 1, "b" => 2}, into: %{}, do: {key, val * val}
