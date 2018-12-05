require 'sinatra'
require 'action_mailer'
require './classes.rb'
require './mailer.rb'

@choc_chip = Cookie.new('chocolate chip', 'a crowd favorite')
@snickerdoodle = Cookie.new('snickerdoodle', 'cinnamon sugar goodness')
@oatmeal = Cookie.new('oatmeal raisin', 'a solid third choice')
@choc_cake = Cake.new('chocolate', 'like Bruce Bogtrotter likes it')
@red_velvet = Cake.new('red velvet', 'No red food coloring!')
@black_forest = Cake.new('black forest', 'ist gut!')
@croissant = Pastry.new('croissant', 'vive la france!')
@eclair = Pastry.new('eclair', 'delicieux !')
@napoleon = Pastry.new('napoleon', "Olivia's favorite")

get '/' do
  erb :home
end

def send_email(recipient)
  Newsletter.welcome(recipient).deliver_now
end

post '/' do
  recipient = params['email']
  send_email(recipient)
  erb :home
end
# get '/all' do
#   @all_items = Item.all
#   erb :all
# end

get '/cookies' do
  @cookies = Cookie.all
  erb :cookies
end

get '/cakes' do
  @cakes = Cake.all
  erb :cakes
end

get '/pastries' do
  @pastries = Pastry.all
  erb :pastries
end
