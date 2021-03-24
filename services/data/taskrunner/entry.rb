require 'rubygems'
require 'bundler/setup'
require 'rufus-scheduler'
require_relative 'lib/jobs'

# Run all jobs when starting up
Jobs.rescuetime_daily_summary

scheduler = Rufus::Scheduler.new

scheduler.cron '5 0,4 * * *' do
  Jobs.rescuetime_daily_summary
end

# Start scheduler
scheduler.join
