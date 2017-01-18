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
        @frame = 1
        while @frame <= 10  do
            pin1 = @score[@index]
            pin2 = @score[@index+1] if @index+1 <= @score.size
            pin3 = @score[@index+2] if @index+2 <= @score.size 
            #ストライクの処理
            if pin1 == 10 && pin2!= nil && pin3 != nil  then
                @total += pin1 + pin2 + pin3
                @frame += 1
                @index += 1
            elsif  pin1 == 10 && pin2 != nil then
                @total += pin1 + pin2 
                @frame += 1
                @index += 1 
            elsif pin1 == 10 then
                @total += pin1
                @frame += 1
                @index += 1      
            #ここまで    
            else
                @total += pin1
                @total += pin2
           
                @total += pin3 if pin1 + pin2 == 10 && pin3 != nil
                @frame += 1
                @index += 2
            end
        end
    end
end