IO.puts "me now points to the current process PID"
me = self
IO.puts "pids will contain all the PIDS spawnned"
pids = for i <- 1..10 do
  IO.puts "spawning a new process for i=#{i}"
  spawn(
    fn ->
      IO.puts "sending to me from self and i=#{i}"
      send(me, {self, i * i})
    end)
end

IO.puts "since pids are executed in parallel, and we want to put the results in order..."
IO.puts "we do Enum.map and receive messages matching the expected PID"
IO.puts inspect pids |> Enum.map(fn pid ->
  receive do

    {^pid, res} ->
      IO.puts "just got match for res=#{res}"
      res
  end
end)
