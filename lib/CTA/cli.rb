class CTA::CLI

    def call
        CTA::API.new.fetch
        CTA::Stations.all.each do |station|
            puts station.ada
        end
    end

end