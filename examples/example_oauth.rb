require 'sinatra'
require 'battlenet/api'

enable :sessions

CALLBACK_URI = "http://localhost:4567/oath/callback"

get "/" do
  '<a href="/oauth/connect">Connect with Battlenet</a>'
end

get "/oauth/connect" do
  ''
end

get "/oauth/callback" do
  session[:access_token] = access_token
  redirect "/info"
end

get "/info" do
  '[access token]: ' + session[:access_token]
end
