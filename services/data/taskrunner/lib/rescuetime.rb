require 'date'
require 'httparty'

class RescueTimeAPI
  include HTTParty
  base_uri 'https://www.rescuetime.com'

  def initialize(key)
    @options = { query: { key: key } }
  end

  def daily_summary
    self.class.get('/anapi/daily_summary_feed', @options).parsed_response
  end

  def analytics(date = nil)
    date = Date.today if date.nil?
    @options[:query].merge!({ format: 'json', by: 'interval', rs: 'hour', rb: date, re: date })
    self.class.get('/anapi/data', @options).parsed_response
  end
end
