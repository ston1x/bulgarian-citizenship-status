require 'watir'
require 'dotenv/load'
# Put your req_num and PIN into the .env file

browser = Watir::Browser.new :chrome, headless: true

begin
  browser.goto 'http://publicbg.mjs.bg/BgInfo'
  browser.text_field(id: 'ReqNum').set(ENV['REQ_NUM'])
  browser.text_field(id: 'PIN').set(ENV['PIN'])
  browser.button(id: 'btnpdf').click
  message = browser.div(id: 'successMsg').wait_until(&:present?).text
  p "#{Time.now} #{message}"
rescue StandardError => error
  p "Something interesting has happened. Please contact me and let's support more cases"
  p error
end
