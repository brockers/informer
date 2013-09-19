require 'rubygems'
require 'sinatra/base'

class Informer < Sinatra::Base
	
	configure do
		set :public_folder, Proc.new { File.join(root, "static") }
		enable :sessions

	end

  get '/' do
		@pageTitle = "Recently posted specs"
		erb :list
  end

end

