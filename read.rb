require 'gmail'
require 'highline/import'

puts "Enter username: "
username = gets.chomp

password = ask("Enter password: ") { |q| q.echo = false }

puts "Enter subject of the emails you want to find: "
sbj = gets.chomp

puts "Enter the regex of the string you want to match in the emails: "
rgx = /#{gets.chomp}/

Gmail.connect(username, password) do |gmail|
  if gmail.logged_in?
    emails = gmail.inbox.emails(gm: "'#{sbj}'")
    emails.each do |mail|
      if m = mail.body.match(rgx)
        token = m[1]
        puts token
        File.open("./tokens", "a") do |f|
          f << token
          f << "\n"
        end
      end
    end
  else
    puts "Authentication failed."
  end
end
