def class Follower

    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
    end

    def self.all
        @@all
    end

    def cults(follower)
        Cult.all.array_of_followers.select do |cults_follower|
            follower
        end
    end

    def join_cult(cult)
        cult.recruit_follower(self)
    end

    def self.of_a_certain_age(age)
        #if the followers age == age return array of them
        @@all.select do |follower|
            follower.age >= age
        end
    end
end