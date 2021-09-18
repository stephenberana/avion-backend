Class BassGuitar
    def initialize(brand, model, color)
        @brand = brand
        @model = model
        @color = color
        @is_tuned = "no"
    end

    def tune_bass
        @is_tuned = "yes"
    end

    def play_bass
        @play_bass = "let's rock"
        puts "Do doo doo dooo doo doo doo doooo"
    end

    def slap_bass
        @slap_bass = "let's roll"
        puts "Tu pank pank tugs tu pank pank"
    end

    def stop_bass
        @stop_bass = "{tacet}"
        puts "In the end, there was only silence."
    end
end    