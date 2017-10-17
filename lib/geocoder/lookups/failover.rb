require 'geocoder/result/failover'

module Geocoder::Lookup
  class Failover < Base

    def required_api_key_parts
      [:lookups]
    end

    private

    def results(query)
      result = []
      configuration[:lookups].any? do |lookup|
        result = Geocoder.search(query.text, query.options.merge(lookup: lookup))
        result.present?
      end
      result
    end
  end
end
