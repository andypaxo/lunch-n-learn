require 'scoreboard'
require 'scorecard'

describe 'scoreboard' do
	before(:each) do
		@sut = Scoreboard.new
	end
	
	it 'Should save and retrieve cards' do
		@sut.add(Scorecard.new('Andy','Elder Scrolls','Level 60'))
		
		first_card = @sut.all[0]
		first_card.name.should eq('Andy')
	end
	
	it 'Should group cards by name' do
		@sut.add(Scorecard.new('Andy','Elder Scrolls','Level 60'))
		@sut.add(Scorecard.new('Regis','WoW','Level 60'))
		@sut.add(Scorecard.new('Regis','LoTR','Level 54'))
		
		all_cards = @sut.cards_by_name
		regis_cards = all_cards['Regis']
		regis_cards.count.should eq(2)
	end
end