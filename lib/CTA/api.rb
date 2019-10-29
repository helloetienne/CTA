class CTA::API

    def fetch
        # token = "6QpIAffmCHjY6PG5cgrK6VKQ3" - this lets me make more calls if needed. not using for now
        url = "https://data.cityofchicago.org/resource/8pix-ypme.json?blue=true"
        # this is my dataset - all blue line stations
        response = HTTParty.get(url)
        binding.pry
    end 

end 