module StaticPagesHelper

    def is_DayTime?
         (DateTime.now.hour < 6) && (DateTime.now.hour >20)
    end
end
