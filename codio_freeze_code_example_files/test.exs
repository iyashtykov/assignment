defmodule Sum do
  def add(a, b)  do
    a + b
  end
end

# FREEZE CODE BEGIN

IO.puts "The sum of 3 + 2 is: #{inspect Sum.add(3, 2)}"

# FREEZE CODE END