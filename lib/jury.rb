class Jury

	attr_accessor :members

	def initialize
		@members = []
	end

	def add_member(member)
		puts "#{member} is the member #{@members.length + 1} of the jury."
		puts
		@members << member
	end

	def cast_votes(finalists)
		votes = {}
		members.each do |m|
			to_vote = finalists.sample
			puts "#{m} cast their vote for #{to_vote}"
			votes[to_vote] = if votes.has_key? to_vote then votes[to_vote] + 1 else 1 end
		end
		
		votes
	end

	def report_votes(final_votes)
		final_votes.each { |k, v| puts "#{k} receives #{v} votes."  }
	end

	def announce_winner(final_votes)
		winner = final_votes.select { |k, v| v >= 4  }.keys.first
		puts
		puts "The winner is #{winner}!.".blue
		winner
	end
end