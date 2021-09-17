#1
arr = [1, 3, 5, 7, 9, 11]
number = 3

#checks to see if 3 is in array
arr.each do |num|
    if num == 3    
      puts "Number present."
    end
   
### alternate
arr.select {|num| num == 3 }