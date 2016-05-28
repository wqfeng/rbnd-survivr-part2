class Tribe
	
	attr_reader :name, :members

	def initialize(options)
		@name = options[:name]
		@members = options[:members]
		puts "Tribe #{@name.yellow} has members: #{@members.join(',')}"
	end

	def tribal_council(options)
		to_delete = @members.select { |member| member != options[:immune]  }.sample
		puts "#{to_delete.to_s.red} was voted off the island."
		@members.delete(to_delete)
		puts "Remaining tribemates on #{@name.yellow} are: #{@members.join(',')}"
		to_delete
	end

	def to_s
		@name
	end
end