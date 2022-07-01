# Resources Nav
Add a :nav option to Rails routes mapper 'resources' method, that adds the resource to an array.
It's convenient to populate a navigation menu.

## Usage
Just add a nav option to your resources route in config/routes.rb, like so:
```ruby
Rails.application.routes.draw do
  resources :apples, nav: true
  resources :oranges, nav: true
end
```

The resources array will then be accessible from Rails.application.routes.resources_nav:
```ruby
irb(main):001:0> Rails.application.routes.resources_nav
=> [:purchase_invoice_lines, :purchase_invoices, :journal_entries, :accounts, :companies]
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
