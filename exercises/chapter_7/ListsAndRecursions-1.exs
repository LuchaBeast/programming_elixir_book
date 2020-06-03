# Exercise: ListsAndRecursion-1
# Write a mapsum function that takes a list and a function.
# It applies the function to each element of the list
# and then sums the result.

defmodule MyList do
        def mapsum([head | tail], func) do
           sum(map([head | tail], func), 0, &(&1+&2))
        end
        
        def map([], _func) do
            []
        end
        def map([head | tail], func) do
            [func.(head) | map(tail, func)]
        end

        def sum([], value, _func) do
            value
        end
        def sum([head | tail], value, func) do
            sum(tail, func.(head, value), func)
        end
end