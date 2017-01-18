class Bowling
    def initialize 
        @score = []
        @total = 0
    end
    
    def add_score(pins)
        @score << pins
    end
    
    def total_score
        @total
    end
    
    def calc_score
        @index = 0
        while @score.size > @index do
            pin1 = @score[@index]
            pin2 = @score[@index+1]
            pin3 = @score[@index+2] if @index <  @score.size
            @total += pin1
            @total += pin2
           # p @pin1 + @pin2
            @total += pin3 if pin1 + pin2 == 10 && pin3 != nil
    
            @index += 2
            #p "total: #{@total}"
        end
    end
end