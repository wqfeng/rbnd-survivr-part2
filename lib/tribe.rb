class Tribe
	
	attr_reader :name, :members

	def initialize(options)
		@name = options[:name]
		@members = options[:members]
		puts "Tribe #{@name} has members: #{@members}"
	end

	def tribal_council(options)
		@members.select { |m| m != options[:immune]  }.sample
	end

	def to_s
		@name
	end
end