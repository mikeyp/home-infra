require 'rubygems'
require 'bundler/setup'
require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '10s' do
  puts "hello from rufus in docker"
end

scheduler.join