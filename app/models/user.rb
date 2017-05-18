class User
  
  include HTTParty
  
  def self.all #simulate activeRecord all() method
    HTTParty.get('http://localhost:3000/api/v1/users.json', format: :json) #get json response from get request made to the other's app api endpoint
  end

  def self.find(id) #simulate activeRecord find() method
    HTTParty.get("http://localhost:3000/api/v1/users/#{id}.json", format: :json) #get json response from get request made to the other's app api endpoint
  end

end
