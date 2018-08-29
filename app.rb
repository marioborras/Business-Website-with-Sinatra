require 'sinatra'
require 'rainbow'
require 'sendgrid-ruby'
include SendGrid


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


post '/message' do
    puts Rainbow("my params are").red + params.inspect
    "Identity stolen!"
    @email = params[:email]
    @last_name = params[:lname]
    @message= params[:message]

from = Email.new(email: @email)
to = Email.new(email: 'miamiroadster@gmail.com')
subject = 'Business Site_beta'
content = Content.new(type: 'text/plain', value: @message)
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers

    erb :home
end
