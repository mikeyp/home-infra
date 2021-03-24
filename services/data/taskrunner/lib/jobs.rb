require_relative 'rescuetime'
require 'sequel'

DB = Sequel.connect(ENV.fetch('DB'))

class Jobs
  def self.rescuetime_daily_summary
    summaries = DB[:rescuetime_summary]
    rt = RescueTimeAPI.new(ENV.fetch('RT_TOKEN'))
    summaries.on_duplicate_key_update.multi_insert(rt.daily_summary)
  end
end