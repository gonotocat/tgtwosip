#!/bin/bash

# TG2SIP Webrtc fork

#Your SIP PBX should be comaptible with  `OPUS@48000` voice codec.

## Usage
#1. Obtain `api_id` and `api_hash` tokens from [this](https://my.telegram.org) page and put them in `settings.ini` file.
#3. Login into telegram with `gen_db` app
#4. Set SIP server settings in `settings.ini`
#5. Run `prod`

#SIP->Telegram calls can be done using 3 extension types:

#1. 'aa_[\s\d]+` for calls by username
#2. `\+[\d]+` for calls by phone number
#3. `[\d]+` for calls by telegram ID. Only known IDs allowed by telegram API.

#All Telegram->SIP calls will be redirected to `callback_uri` SIP-URI that can be set in from `settings.ini` file.  
#Extra information about caller Telegram account will be added into `X-TG-*` SIP tags.

#image 22.04 \ gcc 11 \ c++ 17 \ tdlib latest git \ pjsip 2.9 
# /////////////  need edit settings file before build to add all settings that need
# //////////     nano settings.ini


#build
docker build -t tg:latest .


#next ----------
#run
#docker compose up -d

#sh in docker ------------
#docker exec -it tg bash

#gw in build dir
#cd /home/prod/build














