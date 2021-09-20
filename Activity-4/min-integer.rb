class Array
def check_array (n)
    minimum = n[0]
    n.each do |e|
        if e < minimum
            minimum = e
        end
    end
    return minimum
    end
end

##example
n = [4, 6, 7, 2, 15]