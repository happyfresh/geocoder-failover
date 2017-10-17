module Geocoder::Result
  class Failover
    extend Forwardable
    attr_reader :result

    def_delegators :@result, :address,
      :cache_hit,
      :cache_hit=,
      :coordinates,
      :country,
      :country_code,
      :latitude,
      :longitude,
      :province,
      :province_code,
      :state,
      :state_code

    def initialize(result)
      @result = result
    end
  end
end
