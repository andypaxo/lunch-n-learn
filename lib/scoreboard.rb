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
end