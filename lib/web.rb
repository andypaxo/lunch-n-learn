# This line adds the current file's location to Ruby's path
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'sinatra'
require 'scoreboard'

scores = Scoreboard.new

get '/' do
	return scores.player_stats.to_s
end

get '/add/:name/:game/:score' do
	scores.add({
		:name => params[:name],
		:game => params[:game],
		:score => params[:score]
	})
	return 'Added score'
end