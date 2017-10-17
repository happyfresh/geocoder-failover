require "geocoder"
require "geocoder/failover/version"
require "geocoder/lookups/failover"
require "geocoder/result/failover"

Geocoder::Lookup.street_services.push(:failover)
