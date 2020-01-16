class Ship
    attr_accessor :name, :type, :booty

    @@all = []

    def initialize(attributes)
        attributes.each do |k,v|
            self.send("#{k}=", v) #if self.respond_to?(k)
        end
        self.save
    end

    def self.all
        @all
    end

    def self.clear
        @@all = []
    end

    def save
        @@all << self
    end

end