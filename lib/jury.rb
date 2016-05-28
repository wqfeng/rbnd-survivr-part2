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
		votes = finalists.map { |finalist| [finalist, 0] }.to_h
		members.each do |member|
			to_vote = finalists.sample
			puts "#{member} cast their vote for #{to_vote}"
			votes[to_vote] = votes[to_vote] + 1
		end
		
		votes
	end

	def report_votes(final_votes)
		final_votes.each { |key, value| puts "#{key} receives #{value} votes."  }
	end

	def announce_winner(final_votes)
		winner = final_votes.max_by { |member, votes| votes}[0]
		puts
		puts "The winner is #{winner}!.".blue
		winner
	end
end