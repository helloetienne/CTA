class CTA::Stations

    attr_accessor :station_name, :ada
    @@all = []

    def initialize(station_name, ada)
        @station_name = station_name
        @ada = ada
        @@all << self
    end

    def self.all
        @@all.uniq
    end 

end 