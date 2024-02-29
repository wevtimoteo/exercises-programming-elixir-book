# Use `spawn_link` to start a process, and have that process 
# send a message to the parent and then exit immediately.
#
# Meanwhile, sleep for 500 ms in the parent, then
# receive as many messages as are waiting.
#
# Trace what you receive. Does it matter that you weren’t
# waiting for the notification from the child when it exited?
defmodule ExercisesProgrammingElixir.MultipleProcesses3 do
  import :timer, only: [sleep: 1]

  def hello(parent) do
    send(parent, "Hello!")

    exit(:boom)
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

ExercisesProgrammingElixir.MultipleProcesses3.run()
