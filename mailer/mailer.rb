require 'erb'
require 'mail'
require 'rubygems'

email = "Hi John! This is an email from the mail gem!!!"

require 'rubygems'
require 'mail'

options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            #:domain               => 'otherdomain.com',
            :user_name            => 'jemaddux@gmail.com',
            :password             => 'A4tbtyuhg',
            :authentication       => 'plain',
            :enable_starttls_auto => true  }
 Mail.defaults do
  delivery_method :smtp, options
end

# config.action_mailer.smtp_settings = {
#   :enable_starttls_auto => true,

#   :address => "smtp.gmail.com",
#   :port => "587",
#   :authentication => :plain,
#   :user_name => "nor...@gmail_or_your_google_domain.com",
#   :password => "chucknorris"
# }

mail = Mail.new do
  from     'jemaddux@gmail.com'
  to       'jemaddux@gmail.com'
  subject  'Test email from my ruby mailer program!'
  body     File.read('email.txt')
  #add_file :filename => 'somefile.png', :content => File.read('/somefile.png')
end

mail.delivery_method :sendmail

mail.deliver!

puts mail.to_s
puts "Mail Sent!!"