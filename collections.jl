# A simple array of numbers 
numbers = [0,1, 2, 3, 4, 5,6,7,8,9,]
println(numbers) 
# An array of names
names = ["Alice", "Bob","Charlie"]
println(names)  # Output: ["Alice", "Bob", "Charlie"]
# using a range to create an array
range_example = 1:10 # creates a range from 1 to 10
array_from_range = collect(range_example)
println(array_from_range)
#In Julia, indexing starts on 1 instead of 0 unlike most programming languages. Therefore, to access the first element of a collection such as an array, it should be x[1] and not x[0].
matrix = [1 2 3;4 5 6;7 8 9]
display(matrix)
squares = [x^2 for x in 1:5]
println(squares)

#adding elements 
arr = [1, 2, 3]
push!(arr,4) # adds 4 to the end
println(arr)

# tuples
# a tuple with mixed data types 
person = (25, "ALice", true)
println(person)
println(person[1], person[3])
person = (name = "Alice", age = 30)
println(person.age)

# simple dictionary 
info = Dict("name" => "Alice", "age" => 30)
println(info)
println(keys(info))
println(values(info))

my_set = Set([1, 2, 3, 4, 5, 2, 4])
println(my_set)
set1 = Set([1, 2, 3])
set2 = Set([5, 4, 3])
println(union(set1, set2))
println(intersect(set1, set2))
println(setdiff(set1, set2))