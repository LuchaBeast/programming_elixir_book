# Chapter 5
# Exercise: Functions-2

fun2 = fn
    (0, 0, _c) -> IO.puts "FizzBuzz"
    (0, _b, _c) -> IO.puts "Fizz"
    (_a, 0, _c) -> IO.puts "Buzz"
    (_a, _b, c) -> IO.puts c
end

fun2.(0, 0, 1)
fun2.(0, 1, 2)
fun2.(1, 0, 2)
fun2.(1, 2, 3)