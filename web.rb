# This line adds the current file's location to Ruby's path
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'sinatra'
require 'lib/scoreboard'

scores = Scoreboard.new

scores.add({:name=>'Regis', :game=>'WoW', :score=>'Level 50'})
scores.add({:name=>'Regis', :game=>'LoTR', :score=>'Level 34'})
scores.add({:name=>'Adam', :game=>'Halo', :score=>'6700'})

get '/' do
	haml :index, :locals => { :stats => scores.player_stats }
end

get '/add/:name/:game/:score' do
	scores.add({
		:name => params[:name],
		:game => params[:game],
		:score => params[:score]
	})
	'Added score'
end