class Tribe
	
	attr_reader :name, :members

	def initialize(options)
		@name = options[:name]
		@members = options[:members]
		puts "Tribe #{@name.yellow} has members: #{@members.join(',')}"
	end

	def tribal_council(options)
		to_delete = @members.select { |m| m != options[:immune]  }.sample
		puts "sorry, #{to_delete.to_s.red}."
		@members.delete(to_delete)
	end

	def to_s
		@name
	end
end