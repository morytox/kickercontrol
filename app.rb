# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'


class Player < ActiveRecord::Base
end

class Game < ActiveRecord::Base
	belongs_to :team1backend, :class_name => 'User', :foreign_key => 'team1backend_id'
	belongs_to :team1frontend, :class_name => 'User', :foreign_key => 'team1frontend_id'
	belongs_to :team2backend, :class_name => 'User', :foreign_key => 'team2backend_id'
	belongs_to :team2frontend, :class_name => 'User', :foreign_key => 'team2frontend_id'
end