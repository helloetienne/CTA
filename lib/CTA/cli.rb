class CTA::CLI

    attr_accessor :user_input

    def call
        CTA::API.new.fetch
        greeting
        trains_list
        get_input
        stations_list
        thank_you
    end

    def greeting
        puts 'Hello! Please enter the name of a CTA train line and station
to find out whether it is ADA accessible.'
    end

    def trains_list
        puts "Choose a train:"
       
        binding.pry
    end

    # def get_input
    #     @user_input = gets.strip.capitalize
    # end 
    
   
    # def validate_input
    #     #binding.pry
    #     while @user_input != "Exit" && !stations_list.include?(@user_input)

    #         puts "That is not a valid station name. Please try again!"
    #         @user_input = nil
           
    #         get_input
    #     end

    #     answer
    # end 

    # def stations_list
    #     CTA::Stations.all.collect do |station|
    #         binding.pry
    #     #    if station.station_name
    #     #    end
    #     end
        
    # end

    # def get_input
       
    #     puts "Enter a station name:"
    #     @user_input = gets.strip.capitalize
    #     validate_input
    # end 

    # def answer
    #     CTA::Stations.all.each do |station|
    #         if station.station_name == @user_input && station.ada == false
    #             puts "This station is not accessible."
    #             get_input
    #         elsif station.station_name == @user_input && station.ada == true
    #             puts "This station is accessible."
    #             get_input
    #         end
           
    #     end  
         
    # end 

    def thank_you
        puts "Thank you for riding the CTA!"
    end

end