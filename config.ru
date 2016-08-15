require 'rubygems'
require 'bundler'

Bundler.require

require './mad-libs'
run Sinatra::Application
