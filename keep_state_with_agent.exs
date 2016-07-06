IO.puts "starting an Agent that keeps state in a map"
{:ok, pid} = Agent.start_link(fn -> %{} end)
IO.puts "adding a new k,v to the agent map"
Agent.update(pid, fn map -> Map.put(map, :hello, "world") end)
IO.puts "getting the value from the map"
IO.puts Agent.get(pid, fn map -> Map.get(map, :hello) end)

IO.puts "Agents can be also registered processes"
Agent.start_link(fn -> %{} end, name: :kv)
Agent.update(:kv, fn map -> Map.put(map, :hello, "world from a named Agent") end)
IO.puts Agent.get(:kv, fn map -> Map.get(map, :hello) end)
