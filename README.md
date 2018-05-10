# Vajra

Vajra can add a section to your ELF executable. A section that indicates a parser, address and parse_len injected in a binary format. It is planned that this project shall be used in conjunction with the larger PaPf project.

## Installation

- Clone this repo

      `git clone git@github.com:prashantbarca/vajra.git`

- `cd vajra`

- Build all your dependencies with

  	`bundle`

## Usage

Create a `.vj` which has the following lines (in any order).

```ruby
parser "parser_val"
address "address_val"
parse_len integer
```

You can run the executable as `bin/vajra test.vj executable`.
`test.vj` is the file with the configuration of the parser. `executable` is the ELF file we want to patch with a section.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## TODO

- Supporting more than one parser
- Write RSpec tests

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/prashantbarca/vajra. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Vajra project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/vajra/blob/master/CODE_OF_CONDUCT.md).
