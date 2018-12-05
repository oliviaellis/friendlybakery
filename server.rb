require 'sinatra'
require 'action_mailer'
require './classes.rb'

# Set up ActionMailer to generate and send bakery menu
ActionMailer::Base.view_paths = File.dirname(__FILE__)
ActionMailer::Base.smtp_settings = {
  address:    'smtp.gmail.com',
  port:       '587',
  user_name:  ENV['EMAIL_USERNAME'],
  password:   ENV['EMAIL_PASSWORD'],
  authentication: :plain
}

class Newsletter < ActionMailer::Base
  default from: ENV['EMAIL_USERNAME']

  def welcome(recipient)
    @recipient = recipient
    mail(to: recipient,
      subject: "Bakery product list")
    end
  end

# Change this to take in the recipient based on a form
# And send on button click

# Newsletter.welcome('oaksellis@gmail.com').deliver_now

get '/' do
  @choc_chip = Cookie.new('chocolate chip', 'a crowd favorite')
  @snickerdoodle = Cookie.new('snickerdoodle', 'cinnamon sugar goodness')
  @oatmeal = Cookie.new('oatmeal raisin', 'a solid third choice')
  @choc_cake = Cake.new('chocolate', 'like Bruce Bogtrotter likes it')
  @red_velvet = Cake.new('red velvet', 'No red food coloring!')
  @black_forest = Cake.new('black forest', 'ist gut!')
  @blueberry = Muffin.new('blueberry', 'these are gross')
  @cran_orange = Muffin.new('cranberry orange', 'not too bad')
  @marble = Muffin.new('marble', "now we're talking!")
  erb :home
end

get '/items/all' do
  @all_items = Item.all
  erb :'items/all'
end

get '/items/cookies' do
  @cookies = Cookie.all
  erb :'items/cookies'
end

get '/items/cakes' do
  @cakes = Cake.all
  erb :'items/cakes'
end

get '/items/muffins' do
  @muffins = Muffin.all
  erb :'items/muffins'
end
