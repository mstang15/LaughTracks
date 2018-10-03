require 'bundler'
Bundler.require

require File.expand_path('../config/environment', __FILE__)

require './app/controllers/laugh_tracks_app'

run LaughTracksApp
