# Read Tokens From Emails in Gmail
This requires the following:
  - IMAP enabled on GMAIL account
  - Enable less secure apps in order to connect with the client: https://www.google.com/settings/security/lesssecureapps

## Installation
Requires Ruby + RubyGems

## Usage

ruby read.rb

`Enter username: email@gmail.com`

`Enter password: `

`Enter subject of the emails you want to find: Reset Password`

`Enter the regex of the string you want to match in the emails: https:\/\/www\.domain\.com\/reset\/(.*)`

 ## Contributing

 1. Fork it ( https://github.com/aurainfosec/extract_gmail_tokens/fork )
 2. Create your feature branch (`git checkout -b my-new-feature`)
 3. Commit your changes (`git commit -am 'Add some feature'`)
 4. Push to the branch (`git push origin my-new-feature`)
 5. Create a new Pull Request

 Thanks
