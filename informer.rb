require 'sinatra/base'
require 'active_support'

class Informer < Sinatra::Base

  get '/' do
		@pageTitle = "Recently posted specs"
		erb :display
  end

end

