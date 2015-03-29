require_relative './test_helper'
require "minitest/autorun"
require "jetfuel"

class JetFuelTest < Minitest::Unit::TestCase
  attr_reader :jf

  def setup
    @jf = JetFuel.new 'http://localhost:3000'
  end

  def test_it_can_shorten_url
    VCR.use_cassette('shorten_url') do
      assert_equal 'http://localhost:3000/o', jf.shorten("http://jumpstartlab.com")
    end
  end
end
