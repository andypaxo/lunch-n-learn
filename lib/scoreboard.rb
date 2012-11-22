class Scoreboard
	
	def initialize
		@cards = []
	end

	def add(scorecard)
		@cards.push(scorecard)
	end
	
	def all
		@cards
	end
	
	def cards_by_name
		@cards.group_by { |card| card.name }
	end
	
end