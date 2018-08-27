require 'sinatra'
require 'rainbow'
get '/' do
    erb :home, layout: :layout
end


get '/about' do
    erb :about, layout: :layout
end

get '/contact' do
    erb :contact, layout: :layout
end

get '/image_gallery' do
    erb :image_gallery, layout: :layout
end


# post '/sign-in' do
#     puts Rainbow("my params are").red + params.inspect
#     "Thanks for selling us your info!"
#     @first_name = params[:fname]
#     @last_name = params[:lname]
#     @message= params[:message]

#     erb :thank_you
# end
