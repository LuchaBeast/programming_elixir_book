# Chapter 6
# Exercise: ModulesAndFunctions-1, ModulesAndFunctions-2, ModulesAndFunctions-3
# Extend the Times module with a triple function that multiplies its parameter by three.
# Run the result in IEx. Use both techniques to compile the file
# Add a quadruple function. (Maybe it could call the double function)

# defmodule Times do
#     def double(n), do: n * 2
#     def triple(n), do: n * 3
#     def quadruple(n), do: Times.double(n) * 2
# end

# ----------------
# Exercise: ModulesAndFunctions-4
# Implement and run a function sum(n) that uses recursion
# to calculate the sum of integers from 1 to n.
# You'll need to write this function inside a module in a 
# separate file. Then load up IEx, compile that file, and
# try your function.

defmodule Sum do
    def sum(0), do: 0
    def sum(n), do: n + sum(n-1)    
end