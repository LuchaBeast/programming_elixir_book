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

# defmodule Sum do
#     def sum(0), do: 0
#     def sum(n), do: n + sum(n-1)    
# end

# ----------------
# Exercise: ModulesAndFunctions-5
# Write a function gcd(x,y) that finds the greatest
# common divisor between two nonnegative integers.
# Algebraically, gcd(x,y) is x if y is zero;
# it's gcd(y,rem(x,y)) otherwise.

# defmodule SomeModule do
#     def gcd(x,0), do: x
#     def gcd(x,y), do: gcd(y,rem(x,y))
# end

# ---------------
# Exercise: ModulesAndFunctions-6
# I'm thinking of a number between 1 and 1000...
# The most efficient way to find the number
# is to guess halfway between the low and high
# numbers of the range. If our guess is too big,
# then the answer lies between the bottom of the
# range and one less than our guess. If our guess
# is too small, then the answer lies between one
# more than our guess and the end of the range.
# Your API will be guess(actual, range), where
# range is an Elixir range.

defmodule Chop do
    def guess(actual, a..b) when actual == div(a + b, 2) do
        current_guess = div(a + b, 2)
        IO.puts "Is it #{current_guess}"
        current_guess
    end
    def guess(actual, a..b) when actual > div(a + b, 2) do
        current_guess = div(a + b, 2)
        IO.puts "Is it #{current_guess}"
        guess(actual, current_guess..b)
    end
    def guess(actual, a..b) when actual < div(a + b, 2) do
        current_guess = div(a + b, 2)
        IO.puts "Is it #{current_guess}"
        guess(actual, a..current_guess)
    end
end