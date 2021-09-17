#getting number input from user
puts "Please input a number."
    number = gets.chomp
    number = number.to_i

#conditions
if number in 0..50
    puts "Number is between 0-50."
end
if number in 51..100
    puts "Number is between 51-100."
if number > 100
    puts "Number is greater than 100."    
    end
end