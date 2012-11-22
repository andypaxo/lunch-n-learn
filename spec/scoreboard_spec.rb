require 'scoreboard'
require 'scorecard'

describe 'scoreboard' do
	before(:each) do
		@sut = Scoreboard.new
	end
	
	it 'Should save and retrieve cards' do
		@sut.add(Scorecard.new('Andy','Elder Scrolls','Level 60'))
	end
end