# Chapter 5
# Exercise: Functions-2

fun2 = fn
    (0, 0, _c) -> IO.puts "FizzBuzz"
    (0, _b, _c) -> IO.puts "Fizz"
    (_a, 0, _c) -> IO.puts "Buzz"
    (_a, _b, c) -> IO.puts c
end

# fun2.(0, 0, 1)
# fun2.(0, 1, 2)
# fun2.(1, 0, 2)
# fun2.(1, 2, 3)

#----------------------

# Exercise: Functions-3

fun3 = fn n -> fun2.(rem(n,3), rem(n,5), n) end

fun3.(10)
fun3.(11)
fun3.(12)
fun3.(13)
fun3.(14)
fun3.(15)
fun3.(16)