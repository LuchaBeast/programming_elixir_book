# Exercise: Functions-4

prefix = fn str1 -> (fn str2 -> IO.puts "#{str1} #{str2}" end) end

string1 = prefix.("String1")
final_string = string1.("String2")