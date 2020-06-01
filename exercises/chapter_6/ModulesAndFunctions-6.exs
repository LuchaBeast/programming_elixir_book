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