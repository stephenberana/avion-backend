arr = [6, 3, 1, 8, 4, 2, 10 ,65, 102]
new_arr = []

#checking if num is divisible by 2
arr.each do |e|
    if e % 2 == 0
        new_arr.push(e)
    end
puts new_arr    

end