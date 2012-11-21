# This line adds the current file's location to Ruby's path
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'sinatra'
require 'scoreboard'


get '/' do
	return 'Hi there!'
end
