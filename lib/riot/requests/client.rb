module Riot
  class Client
    attr_accessor :response
    attr_reader :options

    REGION = ENV['REGION']
    BASE_URL = "https://#{REGION}.api.pvp.net/api/lol/"

    def initialize(options={})
      @options = options
    end

    def get
      options.merge!({api_key: ENV['API_KEY']})

      if response.code == 200
        JSON.parse(response.body)
      end
    end

    private

    def url
      BASE_URL + resource_route
    end

    def response
      @response ||= HTTParty.get(url, query: options)
    end
  end
end
