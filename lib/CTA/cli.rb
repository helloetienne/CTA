class CTA::CLI

    attr_accessor :user_input

    def call
        CTA::API.new.fetch
        greeting
        trains_list
        get_input
        choose_train
       # thank_you
    end

    def greeting
        puts 'Hello! Please enter the name of a CTA train line and station
to find out whether it is ADA accessible.'
    end

    def trains_list
        puts "Choose a train:"
        p "Red  ---  Blue"
    end

    def get_input
        @user_input = gets.strip.capitalize
    end 
   
    def choose_train
        if  @user_input == "Red"
            p CTA::Stations.red
            choose_station
           elsif @user_input == "Blue"
            p CTA::Stations.blue
            choose_station
           elsif @user_input == "Exit"
               thank_you
           else puts "Invalid option. Please try again"
           trains_list
           get_input
        end
    end 

    def choose_station
        CTA::Stations.all.collect do |station|
            binding.pry
        #    if station.station_name
        #    end
    end

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