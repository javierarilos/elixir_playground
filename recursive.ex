defmodule Recursive1 do
  def print_multiple_times(msg, n) when n <= 1 do
     IO.puts msg
   end

   def print_multiple_times(msg, n) do
     IO.puts msg
     print_multiple_times(msg, n - 1)
   end
 end

Recursive1.print_multiple_times("Hello!", 3)

defmodule Recursive2 do
  def print_multiple_times(msg \\ "yupppa", n \\ 5)
  def print_multiple_times(msg, 1), do: IO.puts msg
  def print_multiple_times(msg, n) do
    IO.puts msg
    print_multiple_times(msg, n - 1)
  end
end

Recursive2.print_multiple_times("2-Hello!", 3)
IO.puts "==========================="
Recursive2.print_multiple_times("2-Hello!")
