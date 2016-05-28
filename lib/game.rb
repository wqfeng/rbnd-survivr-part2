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
		immune = @tribes[0].members.sample
		puts
		puts "#{immune.to_s.green} won the individual immunity challenge and is safe from elemination."
		@tribes[0].tribal_council(:immune => immune)
		# puts "Remaining tribemates on #{@tribes[0].to_s.yellow} are: #{@tribes[0].members.join(',')}"
	end

	def merge(tribe_name)
		new_tribe = Tribe.new(:name => tribe_name, :members => @tribes.map { |tribe| tribe.members  }.flatten)
		clear_tribes
		add_tribe(new_tribe)
		new_tribe
	end
end