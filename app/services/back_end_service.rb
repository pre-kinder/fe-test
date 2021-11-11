class BackEndService
  def self.conn
    Faraday.new('https://prekinder-api.herokuapp.com')
    # Faraday.new('http://localhost:5000')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
