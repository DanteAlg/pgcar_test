module Riot
  class StaticDataRequest < Riot::Client
    attr_reader :data_type, :id

    def self.champions(fields)
      new(:champion, champData: fields).get['data']
    end

    def initialize(data_type, options={})
      @data_type = data_type
      @id = options.delete(:id)
      @options = options
    end

    private

    def resource_route
      "static-data/#{REGION}/v1.2/#{@data_type}/#{@id}"
    end
  end
end
