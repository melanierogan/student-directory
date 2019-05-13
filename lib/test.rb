require 'csv'

CSV.foreach('lib/test.csv') do |row|
    puts row.inspect
  end

