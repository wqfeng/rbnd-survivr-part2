class Game

	attr_reader :tribes

	def initialize(tribe_a, tribe_b)
		@tribe_a = tribe_a
		@tribe_b = tribe_b
		@tribes = [@tribe_a, @tribe_b]
	end

	def add_tribe(tribe)
		@tribes << tribe
	end

	def clear_tribes
		@tribes.clear
	end

	def immunity_challenge
		@tribes.sample
	end

	def individual_immunity_challenge
		@tribes.sample.members.sample
	end

	def merge(tribe_name)
		Tribe.new(:name => tribe_name, :members => @tribes.map { |e| e.members  }.flatten)
	end
end