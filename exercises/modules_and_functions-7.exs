# Exercise: ModulesAndFunctions-7

# Convert a float to a string with two decimal digits. (Erlang)
:io.format("~.2f", [5.6789])

# Get the value of an operating-system environment variable. (Elixir)
System.get_env("PATH")

# Return the extension component of a file name (so return `.exs`
# if given `"dave/test.exs"`). (Elixir)
Path.extname("dave/test.exs")

# Return the process's current working directory. (Elixir)
System.cwd

# Convert a string containing JSON into Elixir data structures.
Poison.Parser.parse!(~s({"title": "This is an example"}))

# Execute a command in your operating system's shell.
System.cmd("ls", [])
