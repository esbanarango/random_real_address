require 'random_real_address/version'
require 'random_real_address/random_real_address_api'

module RandomRealAddress
  def self.new_address()
    RandomRealAddressApi.new.full_address
  end
end