class CTA::CLI

    @@list = []
    attr_accessor :user_input

    def call
        CTA::API.new.fetch
        #CTA::Stations.all.each do |station|
            greeting
            stations_list
            get_input
            thank_you
        #end
    end

    def greeting
        puts 'Hello! Please enter the name of a CTA Blue Line station
to find out whether it is ADA accessible.
A list of stations is below. To exit, type "exit".'
    end

    def stations_list
        CTA::Stations.all.each do |station|
            @@list << station.station_name
        end
        puts @@list.sort.uniq
    end

    def get_input
        puts "Enter a station name:"
        @user_input = gets.strip.capitalize
        validate_input
    end

    def validate_input
        while @user_input != "Exit" && !@@list.include?(@user_input)
                puts "That is not a valid station name. Please try again!"
                @user_input == nil
                get_input
        end
        answer
    end 

    def answer
        CTA::Stations.all.each do |station|
            if station.station_name == @user_input && station.ada == false
                puts "This station is not accessible."
                get_input
            elsif station.station_name == @user_input && station.ada == true
                puts "This station is accessible."
                get_input
            end
           
        end  
         
    end 

    def thank_you
        puts "Thank you for riding the CTA!"
    end

end