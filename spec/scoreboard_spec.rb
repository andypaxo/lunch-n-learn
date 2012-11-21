require 'scoreboard'

describe 'scoreboard' do
	before(:each) do
		@sut = Scoreboard.new
	end

	it 'can save and retrieve scorecards' do
		@sut.add({:name=>'Regis', :game=>'WoW', :score=>'Level 50'})
		@sut.add({:name=>'Adam', :game=>'Halo', :score=>'6700'})
		
		@sut.all[0][:name].should eq('Regis')
		@sut.all[1][:game].should eq('Halo')
	end
	
	it 'can retrive scores by player' do
		@sut.add({:name=>'Regis', :game=>'WoW', :score=>'Level 50'})
		@sut.add({:name=>'Regis', :game=>'LoTR', :score=>'Level 34'})
		@sut.add({:name=>'Adam', :game=>'Halo', :score=>'6700'})
		
		stats = @sut.player_stats
		# 2 entries for Regis
		stats['Regis'].count.should eq(2)
		# Check for one of them
		wowIndex = stats['Regis'].count { |s| s[:game] == 'WoW' and s[:score] == 'Level 50'}
		wowIndex.should_not eq nil
	end
end