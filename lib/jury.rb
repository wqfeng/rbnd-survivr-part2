class Jury

	attr_accessor :members

	def initialize
		@members = []
	end

	def add_member(member)
		@members << member
	end

	def cast_votes(finalists)
		votes = {}
		members.each do |m|
			to_vote = finalists.sample
			puts "#{m} votes for #{to_vote}"
			votes[to_vote] = if votes.has_key? to_vote then votes[to_vote] + 1 else 1 end
		end
		
		votes
	end

	def report_votes(final_votes)
		final_votes.each { |k, v| puts "#{k} gets #{v} votes."  }
	end

	def announce_winner(final_votes)
		final_votes.select { |k, v| v >= 4  }.keys.first
	end
end