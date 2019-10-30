class CTA::CLI

    def call
        CTA::API.new.fetch
        #CTA::Stations.all.each do |station|
            greeting
            stations_list
            # get_input
            # validate_input
        #end
    end

    def greeting
        puts 'Hello! Please enter the name of a CTA Blue Line station
to find out whether it is ADA accessible.
A list of stations is below. To exit, type "exit".'
    end

    def stations_list
        list = []
         CTA::Stations.all.each do |station|
            list << station.station_name
            #binding.pry
        end
        puts list.sort.uniq
    end

    # def get_input
    #     user_input = gets.chomp.capitalize
    # end

    # def validate_input
    #     if user_input == "Exit"
    #         exit
    #     elsif !stations_list.include? user_input
    #         p "That is not a valid station name. Please try again!"
    #         user_input == nil
    #         get_input
    #     else answer
    # end 

    # def answer
    #     if !stationslist[user_input][ada]
    #         p "This station is not accessible."
    #             else p "This station is accessible.".
    # end 

    # def exit
    # end

end