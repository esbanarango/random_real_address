require 'csv'
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
	    state = @@coords.sample
	    @long = state[2].to_f
	    @lat = state[1].to_f
	    puts "#{@long}, #{@lat}"

	  end

	  def full_address
	    response = HTTParty.get("http://maps.googleapis.com/maps/api/geocode/json?latlng=#{lat},#{long}&sensor=false&language=#{lenguage}")
	    result = JSON.parse(response.body)
	    puts result["results"].first['formatted_address']
	    # puts , response.code, response.message, response.headers.inspect
	  end

 		private

    def self.load_fixtures
      @@coords = []
      CSV.foreach(File.expand_path('../fixtures/us_state_latlon.csv', __FILE__)) do |row|
        @@coords << row
      end
    end


	end
end
