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
            if  strike?(pin1)  then
                @total += pin1 + pin2.to_i + pin3.to_i
                @index += 1
                #p @total
            #ここまで    
            else
                @total += pin1 + pin2.to_i
                @total += pin3.to_i if spare?(pin1,pin2) 
                @index += 2
            end
            @frame_scores << @total
            @frame += 1
            #p "frame: #{@frame-1}    total: #{@total}"
            pin2 = 0
            pin3 = 0
        end
        #p @frame
        #p @frame_scores
    end
    
    def frame_score(index)
        @frame_scores[index-1]
    end
    
    def spare?(pin1,pin2)
        pin1 + pin2.to_i == 10
    end
    
    def strike?(pin1)
        pin1 == 10
    end
end