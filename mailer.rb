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
