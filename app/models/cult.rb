def class Cult

    attr_reader :name, :location, :founding_year, :slogan
    
    #all cults
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @array_of_followers = []
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        self.array_of_followers << follower
    end

    def cult_poppulation
        array_of_followers.count
    end

    def self.find_by_name(cult_name)
        self.all.find do |cult|
            cult_name
        end
    end

    def self.find_by_location(cult_location)
        self.all.select do |cult|
            cult_location
        end
    end

    def self.find_by_founding_year(year)
        self.all.select do |cult|
            year
        end
    end
end