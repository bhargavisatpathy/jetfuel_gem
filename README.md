# Jetfuel

This is my first gem to consume JetFuel api to shorten url

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jetfuel'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jetfuel

## Usage

```ruby
jf = JetFuel.new 'http://SERVER'
jf.shorten "http://jumpstartlab.com" # => "http://SERVER/AFGAD"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/jetfuel/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
