class CTA::CLI

    @@list = []
    attr_accessor :user_input

    def call
        CTA::API.new.fetch
        #CTA::Stations.all.each do |station|
            greeting
            stations_list
            get_input
            validate_input
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
      
    end

    def validate_input
        while !@@list.include?(@user_input)
                puts "That is not a valid station name. Please try again!"
                @user_input == nil
                get_input
        end
        answer
        
    end 

    def answer
    #     CTA::Stations.all.each do |station|
    #         binding.pry
    #         if station.ada == false
    #             puts "This station is not accessible."
    #                 else puts "This station is accessible.".
    #         end
    #     end    
    end 

    # def quit
    # end

end