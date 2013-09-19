require 'rubygems'
require 'bundler'

Bundler.require

require 'sinatra'

require './informer'
run Informer
