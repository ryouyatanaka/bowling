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
        @frame = 0
        while @score.size > @frame do
            pin1 = @score[@frame]
            pin2 = @score[@frame+1]
            pin3 = @score[@frame+2] if @frame <  @score.size
            @total += pin1
            @total += pin2
           # p @pin1 + @pin2
            @total += pin3 if pin1 + pin2 == 10 && pin3 != nil
    
            @frame += 2
            #p "total: #{@total}"
        end
        
        @total
    end
end