require 'csv'

namespace :data do
	desc "Import data from a file"
	task :import => :environment do
		path = ENV['file'] || 'lib/data/data.csv'
		CSV.parse(File.open(path)) do |row|
			quote = Quote.new :content => row[0], :context => row[1]
			source = Source.find_or_initialize_by_official_name_and_first_name :official_name => row[5], :first_name => row[3]
			if source.new_record?
				source.title = row[2]
				source.middle_name = row[4]
				source.bio = row[6]
			end
			quote.source = source
			category = Category.find_or_create_by_name :name => row[7]
			quote.category = category
			quote.save
			puts quote.inspect
		end
	end


end