require 'rest-client'
require 'json'

class ContactService
  def initialize()
    @base_url = 'https://webhook.site/2cf7d541-d06b-4507-9fe8-5966453baedc'
  end

  def post_contact(contact)
    object = JSON.parse(contact)
    begin
      response = RestClient.post(@base_url, {
        'id':     object['id'],
        'name':   object['name'],
        'email':  object['email']
      }.to_json)      
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end      
  end
    
end