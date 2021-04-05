require 'rubygems'
require 'bundler/setup'
require 'dotenv/load'
require 'rufus-scheduler'
require_relative 'lib/jobs'

# run migrations if necessary
Sequel.extension :migration, :core_extensions
DB = Sequel.connect(ENV.fetch('DB'))
Sequel::Migrator.run(DB, File.join(__dir__, 'migrations'))

# Run all jobs when starting up
Jobs.rescuetime_daily_summary
Jobs.rescuetime_analytics

scheduler = Rufus::Scheduler.new

scheduler.every '30m' do
  Jobs.rescuetime_analytics
end

scheduler.every '30m' do
  Jobs.rescuetime_daily_summary
end

# Start scheduler
scheduler.join
