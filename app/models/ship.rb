require 'pry'
class Ship
    attr_accessor :name, :type, :booty

    @@all = []

    def initialize(attributes)
        attributes.each do |k,v|
            self.send("#{k}=", v) if self.respond_to?(k)
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end

end