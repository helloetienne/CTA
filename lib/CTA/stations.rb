class CTA::Stations

attr_accessor :station_name, :ada
@@all = []

def initialize(station_name, ada)
    @station_name = station_name
    @ada = ada
    @@all << self
end

def self.all
    @@all
end 


#intro
#list station names
# asks for user input, says type exit to exit
# gets input from user, capitalizes

# if user types exit, exit the program

# if list of stations !include? [user response]
    #p "invalid response"
    #back to list station names

# if list of stations include? [user response]
    # response.ada = true return "is accessible"
        # else return "not accessible"

# return to list station names

end 