# Repeat the two, changing spawn_link to spawn_monitor.
defmodule ExercisesProgrammingElixir.MultipleProcesses5B do
  import :timer, only: [sleep: 1]

  def hello(parent) do
    send(parent, "Hello!")

    raise "Boom!"
  end

  def run do
    spawn_monitor(__MODULE__, :hello, [self()])

    sleep 500

    receive_messages()
  end

  defp receive_messages do
    receive do
      message ->
        IO.puts "Message received: #{inspect message}"

        receive_messages()
      after 600 ->
        IO.puts "No more messages..."
    end
  end
end

ExercisesProgrammingElixir.MultipleProcesses5B.run()
