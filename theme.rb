require 'sinatra'
require 'sinatra/static_assets'

set :root, File.dirname(__FILE__) 

class RedGreenTheme < Sinatra::Base
  
  register Sinatra::StaticAssets
  
  get "/" do
    @title_for_layout = "Red Green Tumblr Theme"
    haml :index, :layout => :red_green
  end
  
end