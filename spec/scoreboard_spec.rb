require 'scoreboard'

describe 'scoreboard' do
	it 'can save and retrieve scorecards' do
		sut = Scoreboard.new
		sut.add({'name'=>'Regis', 'game'=>'WoW', 'score'=>'Level 50'})
		sut.add({'name'=>'Adam', 'game'=>'Halo', 'score'=>'6700'})
		sut.all[0]['name'].should eq('Regis')
		sut.all[1]['game'].should eq('Halo')
	end
end