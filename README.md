# BirthdateFromPesel

Library for getting birthdate from polish pesel number.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'birthdate_from_pesel'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install birthdate_from_pesel

## Usage

```ruby
BirthdateFromPesel::Parser.new('02212811672').birthdate
 => #<Date: 2002-01-28 ((2452303j,0s,0n),+0s,2299161j)> 
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dbackowski/birthdate_from_pesel.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

