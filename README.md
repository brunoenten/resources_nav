# Resources Nav
Add a :nav option to Rails routes mapper 'resources' method, that adds the resource to an array.
It's convenient to populate a navigation menu.

## Usage
Just add a nav option to your resources route in config/routes.rb. The nav option can take a hash,
containing an icon name.

```ruby
Rails.application.routes.draw do
  resources :apples, nav: true
  resources :oranges, nav: true
  resources :apricots, nav: { icon: 'fruit' }
end
```

The resources array will then be accessible from Rails.application.routes.resources_nav:
```ruby
Rails.application.routes.resources_nav.map(&:name)
=> [:apples, :oranges, :apricots]

resource = Rails.application.routes.resources_nav.detect { |r| r == :apricots }

resource.name
=> :apricots

resource.icon
=> 'fruit'
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "resources_nav"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install resources_nav
```

## Contributing
Feel free to submit issues or pull requests!

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
