require 'httparty'
require 'json'
require 'pp'

class SCT
  include HTTParty
  base_uri 'http://aplicaciones4.sct.gob.mx/sibuac_internet/'
  
  
  def self.toLat (string)
    return (string.to_f*0.04466225452111452)
  end
  
  def self.toLon (string)
    return -(string.to_f*0.06779817526740388)
  end
  
  
end