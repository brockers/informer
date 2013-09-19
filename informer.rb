require 'json'
require 'rubygems'
require 'sinatra/base'
require 'couchrest'
require 'pry'

class Informer < Sinatra::Base
	
	$db = CouchRest.database!("http://127.0.0.1:5984/informer-data")

	configure do
		set :public_folder, Proc.new { File.join(root, "static") }
		enable :sessions

	end

  get '/' do
		@pageTitle = "Recently posted specs"
		erb :list
  end

	post '/' do
		@jdata = JSON.parse(request.env["rack.input"].read)
		response = $db.save_doc(@jdata)
		puts response
	end

end

