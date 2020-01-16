class Pirate
    attr_accessor :name, :weight, :height

    @@all = []

    def initialize(attributes)
        attributes.each do |k,v|
            self.send("#{k}=", v) if self.respond_to?(k)
          end
          self.save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
end