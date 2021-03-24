require 'sequel'

Sequel.extension :migration, :core_extensions

DB = Sequel.connect(ENV.fetch('MYSQL'))

Sequel::Migrator.run(DB, File.join(File.dirname(__dir__), 'migrations'))