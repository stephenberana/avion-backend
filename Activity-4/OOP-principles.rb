#Abstraction
class Persona
    public
    def start_turn
        puts "What would you do in this turn? (Melee, Persona, Guard, Item)"
        @move = gets.chomp.to_s
        use_persona
        use_melee
        use_guard
        use_item
        @phase_over = false
    end

    private 
    def use_persona
        if @move == "Persona"
        @phase_over = true
        puts "PERSONAAAA!"
        end
    end
    def use_melee
        if @move == "Melee"
        @phase_over = true
        puts "Take this!"
        end
    end
    def use_guard
        if @move == "Guard"
        @phase_over= true
        puts "On guard!"
        end
    end
    def use_item
        if @move == "Item"
        @phase_over = true
        puts "Much appreciated!"
        end
    end
end

#Encapsulation
class RPGCharacter
    def initialize (name, class, race, weapon)
        @char_name = name
        @char_class = class
        @char_race = race
        @char_weapon = weapon
    end

    def display_char()
        puts "Character name: #@char_name"
        puts "Character class: #@char_class"
        puts "Character race: #@char_race"
        puts "Character weapon: #@char_weapon"
    end 
end

#creating objects
char1 = RPGCharacter.new("Geralt", "Swordsman", "Witcher", "Zireael")
char2 = RPGCharacter.new("Noctis", "Crown Prince", "Human", "Engine Blade")
char3 = RPGCharacter.new("Joker", "Trickster", "Human", "Persona Arsene")

#call methods
char1.display_char()
char2.display_char()
char3.display_char()

#Polymorphism
class Programmer
    def check_mood(programmer)
        puts programmer.mood
    end
end

class Stage1
    def mood 
        "All right! Time to work on this project!"
    end
end

class Stage2
    def mood
        "Okay, time to test the code!"
    end
end

class Stage3
    def mood
        "Weird it's not working. Let me try some ~~solutions~~ <StackOverflow>."
    end
end

class Stage4
    def mood
        "<after 4 hours> WHY ARE YOU STILL NOT WORKIIIIING!?!"
    end
end

class Stage5
    def mood
        "<after another 4 hours> *barely audible crying noises*"
    end
end

class Stage6
    def mood
        "<code compiles and runs> Praise da Lawd."
    end
end

class Stage 7
    def mood
        "<another day, another project> Ahhh sh*t here we go again."
    end
end