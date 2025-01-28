using Random 
correct_number = rand(1:100) # generate a number from 1 to 100
value = 0
while true
    print("Please enter a number between 1 and 10: ")
    input = strip(readline(stdin))
    global value = tryparse(Int, input)
    if value == correct_number
        println("You successfully guessed $(input).")
        break
    else
        println("You guessed the wrong number $(input)")
    end
end