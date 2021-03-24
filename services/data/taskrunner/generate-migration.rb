timestamp = Time.now.to_i

filename = File.join(__dir__, 'migrations', "#{timestamp}_#{ARGV.join('_')}.rb")

template = <<HEREDOC
Sequel.migration do
  change do
    create_table(:artists) do
    primary_key :id
    String :name, null: false
    end
  end
end
HEREDOC

File.open(filename, 'w') { |f| f.write(template) }