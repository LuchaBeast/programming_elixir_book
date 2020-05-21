# Chapter 6
# Exercise: ModulesAndFunctions-1
# Extend the Times module with a triple function that multiplies its parameter by three.

defmodule Times do
    def double(n), do: n * 2
    def triple(n), do: n * 3
    def quadruple(n), do: Times.double(n) * 2
end