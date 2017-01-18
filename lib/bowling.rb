class Bowling
    def initialize 
        @scores = []  
        @index = 0
        @frame = 1
        @total = 0
        @frame_scores = []
    end
    
    def add_score(pins)
        @scores << pins
    end
    
    def total_score
        @total
    end
    
    def calc_score
        while @frame <= 10  do
            pin1 = @scores[@index]
            pin2 = @scores[@index+1] if @index+1 <= @scores.size
            pin3 = @scores[@index+2] if @index+2 <= @scores.size 
            #ストライクの処理
            if pin1 == 10 && pin2!= nil && pin3 != nil  then
                @total += pin1 + pin2 + pin3
                @frame_scores << @total
                @frame += 1
                @index += 1
            elsif  pin1 == 10 && pin2 != nil then
                @total += pin1 + pin2 
                @frame_scores << @total
                @frame += 1
                @index += 1 
            elsif pin1 == 10 then
                @total += pin1
                @frame_scores << @total
                @frame += 1
                @index += 1      
            #ここまで    
            else
                @total += pin1 + pin2
                @total += pin3 if spare?(pin1,pin2) && pin3 != nil
                @frame_scores << @total
                @frame += 1
                @index += 2
            end
        end
    end
    
    def frame_score(index)
        @frame_scores[index-1]
    end
    
    def spare?(pin1,pin2)
        pin1 + pin2 == 10
    end
end