require_relative 'rescuetime'
require 'sequel'

class Jobs
  def self.rescuetime_daily_summary
    summaries = DB[:rescuetime_summary]
    rt = RescueTimeAPI.new(ENV.fetch('RT_TOKEN'))
    summaries.on_duplicate_key_update.multi_insert(rt.daily_summary)
  end

  def self.rescuetime_analytics(date = nil)
    date = Date.today if date.nil?
    analytics = DB[:rescuetime_analytics]
    rt = RescueTimeAPI.new(ENV.fetch('RT_TOKEN'))
    resp = rt.analytics(date)
    rows = resp['rows'].map do |item|
      { date: item[0], time_spent: item[1], number_people: item[2], activity: item[3], category: item[4], productivity: item[5]}
    end

    analytics.filter(:date => date).delete
    analytics.multi_insert(rows)
  end
end
