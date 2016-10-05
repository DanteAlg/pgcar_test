module Riot
  class StaticDataRequest < Riot::Client
    attr_reader :data_type

    def initialize(data_type, options={})
      @data_type = data_type
      @options = options
    end

    def self.champions_data(fields)
      new(:champion, champData: fields).get['data']
    end

    private

    def resource_route
      "static-data/#{REGION}/v1.2/#{@data_type}"
    end
  end
end
