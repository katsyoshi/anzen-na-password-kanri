# Anzen::Na::Password::Kanri [![Build Status](https://travis-ci.org/katsyoshi/anzen-na-password-kanri.svg?branch=master)](https://travis-ci.org/katsyoshi/anzen-na-password-kanri)

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/anzen/na/password/kanri`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'anzen-na-password-kanri', github: 'katsyoshi/anzen-na-password-kanri'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ rake build
    $ gem install pkg/anzen-na-password-kanri-0.1.0.gem

## Usage

* generate password

use default characters
```
$ bundle exec exe/anzen gen -n 30
66IeVL9whrmDgt#qMzG)^ejagLmw+3~
```

use only alphabet and number characters

```
$ bundle exec exe/anzen gen -n 30 -t basic
i6ESjkkXFZSOUAF6bKntzI1xytfePf
```


* check your password strength
```
$ bundle exec exe/anzen kensa -p y0urP@ssw0Rd
password: y0urP@ssw0Rd
score: 0
crack time: instant
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/katsyoshi/anzen-na-password-kanri.

