class Scoreboard
	def initialize
		@scores = []
	end

	def add(scorecard)
		@scores.push(scorecard)
	end
	
	def all
		@scores
	end
	
	def player_stats
		@scores.group_by { |s| s['name'] }
	end
end