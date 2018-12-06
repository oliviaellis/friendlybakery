require 'sinatra'
require 'action_mailer'
require './classes.rb'
require './mailer.rb'

@choc_chip = Cookie.new('chocolate chip', 'A twist on the classic', 'https://sugarspunrun.com/wp-content/uploads/2018/01/Chocolate-Chip-Oatmeal-Cookies-Recipe-9-of-10.jpg')
@gingerbread = Cookie.new('gingerbread', 'Just in time for the holidays', 'https://realbalanced.com/wp-content/uploads/2018/11/Copy-of-keto-gingerbread-cookies-15-683x1024.jpg')
@shortbread = Cookie.new('shortbread', 'A traditional Scottish treat', 'https://www.theseasonedmom.com/wp-content/uploads/2017/10/3-Ingredient-Classic-Scottish-Shortbread-Cookies-17.jpg')
@party_cakes = Cake.new('event catering', 'Let us make your event sweet', 'https://images.unsplash.com/photo-1518566585952-954bb14432d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
@wedding_cakes = Cake.new('wedding cakes', 'Our custom cakes can fit any wedding theme', 'https://images.unsplash.com/photo-1536599524557-5f784dd53282?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
@specialty_cakes = Cake.new('specialty cakes', 'For any occassion--or none at all', 'https://images.unsplash.com/photo-1534353875273-b5887cc1abf5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
@donut = Pastry.new('donuts', 'Flavors change weekly', 'https://images.unsplash.com/photo-1514517220017-8ce97a34a7b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
@tart = Pastry.new('tarts', 'Filled with fresh fruit and pastry cream', 'https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
@tatin = Pastry.new('pear tarte tatin', "Olivia's favorite--a French specialty", 'https://images.unsplash.com/photo-1512398050999-49576a8dac80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80')
$all_items = Item.all

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

post '/cookie_order' do
  recipient = params['email']
  send_email(recipient)
  redirect '/cookies'
end

get '/cakes' do
  @cakes = Cake.all
  erb :cakes
end

post '/cake_order' do
  recipient = params['email']
  send_email(recipient)
  redirect '/cakes'
end

get '/pastries' do
  @pastries = Pastry.all
  erb :pastries
end

post '/pastry_order' do
  recipient = params['email']
  send_email(recipient)
  redirect '/pastries'
end
