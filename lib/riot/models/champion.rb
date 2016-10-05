module Riot
  class Champion < OpenStruct
    def self.all
      champions.map do |result|
        self.new(result[1])
      end
    end

    def image_url
      'http://ddragon.leagueoflegends.com/cdn/6.20.1/img/champion/' + image['full']
    end

    private

    def self.champions
      Riot::StaticDataRequest.champions('image,recommended').to_a
    end
  end
end
