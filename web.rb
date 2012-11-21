# This line adds the current file's location to Ruby's path
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'sinatra'
require 'scoreboard'

scores = Scoreboard.new

get '/' do
	scores.player_stats.to_s
	haml :index
end

get '/add/:name/:game/:score' do
	scores.add({
		:name => params[:name],
		:game => params[:game],
		:score => params[:score]
	})
	'Added score'
end