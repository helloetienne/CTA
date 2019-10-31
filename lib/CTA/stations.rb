class CTA::Stations

    attr_accessor :station_name, :ada, :station_descriptive_name
    @@all = []

    def initialize(station_name, station_descriptive_name, ada)
        @station_name = station_name.capitalize
        @station_descriptive_name = station_descriptive_name
        @ada = ada
        save
    end

    def self.all
        @@all.uniq
    end 

    def save 
        @@all << self
    end

    def self.red
        red = []
        self.all.each do |station|
        if station.station_descriptive_name.include?("Red")
            red << station
        end
        end
        red
    end

    def self.blue
        blue = []
        self.all.each do |station|
        if station.station_descriptive_name.include?("Blue")
            blue << station
        end
        end
        blue
    end


end 