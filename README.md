# Docparser

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/docparser/ruby`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'docparser-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install docparser-ruby

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/officeluv/docparser-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Docparser::Ruby project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/officeluv/docparser-ruby/blob/master/CODE_OF_CONDUCT.md).

document, parser, webhook

payload = 'laksdjflkj'
webhook = Docparser::Webhook.new(payload)
document = webhook.document
document.id # 'foo'
document.parser # instance of Docparser::Parser
Docparser::Parser.list_all
parser = Docparser::Parser.new(name: 'foo')
parser.id # 'foobar'
document.parsed_data # 'some strructure specific to parser + document
document.parsed?
document.send
document.file