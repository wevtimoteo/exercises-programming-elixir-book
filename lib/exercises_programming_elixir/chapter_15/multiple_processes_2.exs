# spawn two processes and then passes each a unique token.
# Have then send the tokens back
defmodule ExercisesProgrammingElixir.Spawner do
  def echo do
    receive do
      {sender, token} ->
        send sender, {:ok, token}

        echo()
    end
  end
end

pid = spawn(ExercisesProgrammingElixir.Spawner, :echo, [])
pid2 = spawn(ExercisesProgrammingElixir.Spawner, :echo, [])

send pid, {self(), "Ruby"}
send pid2, {self(), "Elixir"}

receive do
  {:ok, token} ->
    IO.puts "Hello, #{token}"
end

receive do
  {:ok, token} ->
    IO.puts "Hello, #{token}"
end
