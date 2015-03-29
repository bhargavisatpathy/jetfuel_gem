require 'jetfuel/version'
require 'json'
require 'faraday'

class JetFuel
  attr_reader :connection

  def initialize(server = 'http://localhost:3000')
    @connection = Faraday.new(url: "#{server}/api/v1")
  end

  def shorten(long)
    params = { url: { long: long } }
    response_hash = JSON.parse(connection.post('urls', params).body)
    if response_hash['success']
      response_hash['url']['short']
    else
      'ERROR :' + response_hash['message']
    end
  end
end
