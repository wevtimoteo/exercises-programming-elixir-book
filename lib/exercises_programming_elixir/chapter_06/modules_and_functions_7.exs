# 1. convert float to string with two decimal digits (Erlang)
:io.fwrite("~.2f~n", [1.2345])

# 2. get the value of an operating-system env var (Elixir)
System.get_env("PWD")

# 3. return the extension component of a file name (Elixir)
Path.extname("chapter-6/modules_and_functions_7.exs")

# 4. convert a string containing JSON into Elixir data structures
# https://hex.pm/packages/jason

# 5. execute a command in your operating system's shell
System.cmd("echo", ["hello"])
