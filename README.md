# Masterbuilder

A Ruby gem for building things masterfully.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add masterbuilder
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install masterbuilder
```

## Usage

```ruby
require 'masterbuilder'

# Your code here
```

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

### Component Development

This gem uses [Lookbook](https://lookbook.build/) for rapid component development. To start the component preview server:

```bash
bin/catalog
```

This will start a Rails server at http://localhost:3000 where you can view and interact with all components. Component previews are located in `spec/catalog/previews/`.

### Running Tests

```bash
rake spec
# or
bundle exec rspec
```

### Linting

```bash
rake standard
# or
bundle exec standardrb --fix
```

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/justinbarber/masterbuilder.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
