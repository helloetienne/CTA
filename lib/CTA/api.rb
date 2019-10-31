class CTA::API

    def fetch
        # token = "6QpIAffmCHjY6PG5cgrK6VKQ3" - this lets me make more calls if needed. not using for now
        url = "https://data.cityofchicago.org/resource/8pix-ypme.json?direction_id=N"
       
        response = HTTParty.get(url)
        response.each do |station|
            #binding.pry
            station_name = station["station_name"]
            station_descriptive_name = station["station_descriptive_name"]
            ada = station["ada"]
            CTA::Stations.new(station_name, station_descriptive_name, ada)
        end
    end 

end 