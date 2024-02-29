# Do the same, but have the child raise an exception.
#
# What difference do you see in the tracing?
defmodule ExercisesProgrammingElixir.MultipleProcesses4 do
  import :timer, only: [sleep: 1]

  def hello(parent) do
    send(parent, "Hello!")

    raise "Boom!"
  end

  def run do
    spawn_link(__MODULE__, :hello, [self()])

    sleep 500

    receive_messages()
  end

  defp receive_messages do
    receive do
      message ->
        IO.puts "Message received: #{message}"

        receive_messages()
      after 600 ->
        IO.puts "No more messages..."
    end
  end
end

ExercisesProgrammingElixir.MultipleProcesses4.run()
