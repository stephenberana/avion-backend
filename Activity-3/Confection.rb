class Confection
    attr_accessor :name

    def initialize (n)
        self.name = n
    end
    def prepare
        puts "Baking #{self.name} at 350 degrees for 25 minutes."
    end
    def eat
        puts "Eating #{self.name} voraciously like there's no tomorrow."
    end
end    

class BananaCake < Confection
    def rest
        puts "Letting the #{self.name} rest for 15 minutes before removing it from the pan."
    end
end

class Cupcake < Confection
    def frosting
        puts "Applying frosting to #{self.name}."
    end
end


