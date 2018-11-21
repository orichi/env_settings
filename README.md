# EnvSettings

一个更加便捷的yml文件访问方式，使用方法调用符来调用配置文件里的key值

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'env_settings'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install env_settings

## Usage

```
conf = EnvSettings.load 'spec/config_normal.yml'

p conf.server.ports 
=> [8080, 8090]

详细用法，请看spec内测试
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/orichi/env_settings. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EnvSettings project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/orichi/env_settings/blob/master/CODE_OF_CONDUCT.md).
