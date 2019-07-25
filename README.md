# bulgarian-citizenship-status
Check your bulgarian citizenship status

## Description
This script makes checking your bulgarian citizenship status automatic.

Instead of going to http://publicbg.mjs.bg/BgInfo and entering your number and PIN every time manually, just use this script.

## Usage

```sh
🐷$ ruby bg_citizenship_status.rb
"По преписката Ви предстои да бъде извършен финален експертен преглед преди да бъде разгледана от Съвета по гражданство."
```

## Dependencies
- ruby >= 2.4.4
- dotenv >= 2.5.0
- rest-client >= 2.0.2

## Installation
0. Make sure you have ruby installed
1. Put your REQ_NUM and PIN into `.env` file
2. `$ gem install dotenv`
3. `$ gem install watir`
4. `ruby bg_citizenship_status.rb`
5. Add it to cron if you wish 🚜🌾
