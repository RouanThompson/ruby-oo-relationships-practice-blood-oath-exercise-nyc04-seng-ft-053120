def class Blood_Oath

    @@all = []
    
    def initialize(date)
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end
end