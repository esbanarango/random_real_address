require 'httparty'
require 'random_real_address/random_gaussian'

module RandomRealAddress

	class RandomRealAddressApi

		attr_accessor  :lat, :long, :country, :rad, :lenguage

	  U = 100000.0
	  V = 1000000.0

	  def initialize(country='USA',lat=0,long=0,rad=0, lenguage= 'en')
	    @country = country
	    @rad = rad
	    @lenguage = lenguage

	    @long = RandomGaussian.new(116467615, U).rand
	    @lat = RandomGaussian.new(39923488, U).rand
	    puts "#{@long}, #{@lat}"

	  end

	  def full_address
	    r_lat = lat/V
	    r_long = long/V
	    response = HTTParty.get("http://maps.googleapis.com/maps/api/geocode/json?latlng=#{r_lat},#{r_long}&sensor=false&language=#{lenguage}")
	    # puts response.body, response.code, response.message, response.headers.inspect
	  end
	end
end
