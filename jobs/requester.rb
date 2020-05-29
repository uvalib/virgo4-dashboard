#
# localize the request mechanism
#
require 'httparty'

class Requester
   include HTTParty
   default_timeout 15
end