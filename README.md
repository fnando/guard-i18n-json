# Guard::I18nJson

Export your I18n translations to JSON files automatically when files change. This is the companion guard plugin for [i18n-json](https://github.com/fnando/i18n-json).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "guard-i18n-json"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guard-i18n-json

## Usage

First, add the template to your `Guardfile` with the following command:

```console
$ bundle exec guard init i18n_json
```

Something like this will be added:

```ruby
guard(:i18n_json,
      run_on_start: true,
      config_file: "./config/i18n_json.yml",
      require_file: "./config/boot.rb") do
  watch(%r{^(app|config)/locales/.+\.(yml|po)$})
  watch(%r{^config/i18n_json.yml$})
  watch("Gemfile")
end
```

Configure file paths accordingly.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fnando/guard-i18n-json. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Guard::I18nJson project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/fnando/guard-i18n-json/blob/master/CODE_OF_CONDUCT.md).
