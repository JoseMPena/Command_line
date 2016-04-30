require "sinatra"
require "sinatra/reloader" if development?
require "artii"

# get "/" do
#   erb(:index)
# end

get "/ascii/:word" do
  @word = params[:word]
  @art = Artii::Base.new.asciify(@word)
  erb :ascii
end
