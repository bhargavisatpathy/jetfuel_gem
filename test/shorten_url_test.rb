require "minitest/autorun"
require "minitest/pride"

require "jetfuel"

class ShortenUrlTest < Minitest::Unit::TestCase
  def test_shorten_url
    assert_equal "http://howistart.org/posts/ruby/1", Jetfuel::Url
  end
end
