require "sinatra"
require "sinatra/reloader" if development?
require "artii"

# get "/" do
#   erb(:index)
# end

get "/ascii/?:p1?/?:p2?/?:p3?" do
  if params[:p1] == "falcon" && params[:p2] == "special" && params[:p3] == "secret"
    erb :easter_egg
  else
    artii = Artii::Base.new font: "epic"
    @word = artii.asciify(params[:p1])
    @font = artii.asciify(params[:p2])
    erb :ascii
  end
end
