# Chapter 6
# Exercise: ModulesAndFunctions-1, ModulesAndFunctions-2, ModulesAndFunctions-3
# Extend the Times module with a triple function that multiplies its parameter by three.
# Run the result in IEx. Use both techniques to compile the file
# Add a quadruple function. (Maybe it could call the double function)

defmodule Times do
    def double(n), do: n * 2
    def triple(n), do: n * 3
    def quadruple(n), do: Times.double(n) * 2
end