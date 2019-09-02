require 'restclient'
require 'dotenv/load'
require 'json'
# Put your req_num and PIN into the .env file

url = 'http://publicbg.mjs.bg/BgInfo/ReqInfo/GetReqInfo'
begin
  response = RestClient.post(
    url,
    reqnum: ENV['REQ_NUM'],
    pin: ENV['PIN']
  )
  p JSON.parse(response.body)['resultstr']
rescue RestClient::Exception => error
  p error
end
