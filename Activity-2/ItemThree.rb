#defining user input
puts "Please input anything."
    user_input = ""

#defining the loop
while user_input = gets.chomp
    puts "Please type STOP if you want to break this loop."
    if user_input == "STOP"
    puts "Loop is broken. You are free."
        break             
    end
end
