module Riot
  class Base < OpenStruct
    ASSETS_URL = 'http://ddragon.leagueoflegends.com/cdn/6.20.1/img'

    def image_url
      [ASSETS_URL, self.class.class_name, image['full']].join('/')
    end

    class << self
      def find(options={})
        new(Riot::StaticDataRequest.new(class_name, options).get)
      end

      def all(options={})
        resource_collection(options).map do |result|
          new(result[1])
        end
      end

      def class_name
        name.split('::').last.downcase
      end

      private

      def resource_collection(options)
        Riot::StaticDataRequest.new(class_name, options).get['data'].to_a
      end
    end
  end
end
