# Emoji
[![Build Status](https://travis-ci.org/wpeterson/emoji.svg?branch=master)](https://travis-ci.org/wpeterson/emoji)

A Ruby gem. For emoji. For everyone. :heart:

This gem exposes the [Phantom Open Emoji library](https://github.com/Genshin/PhantomOpenEmoji) unicode/image assets and APIs for working with them.

Easily look up emoji's name, unicode character, or image assets and convert it into emoji representations.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
  - [Image Replacement APIs](#image-replacement-apis)
  - [Emoji Library Index APIs](#emoji-library-index-apis)
  - [String Helper Methods](#string-helper-methods)
- [Emoji Asset Host](#emoji-asset-host)
- [HTML Safety and Performance](#html-safety-and-performance)
- [Contributors :heart:](#contributors-heart)
- [Contributing](#contributing)


## Installation

First, add this line to your application's Gemfile:

```ruby
gem 'emoji'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install emoji

Finally, install the emoji image library assets:

    $ rake emoji:install_assets
    ====================================================================
    = emoji image assets install
    = Target: /Users/user/src/rails-app/app/assets/images/emoji
    = Source: /Users/user/src/emoji/assets/images
    ====================================================================
    - Creating /Users/user/src/rails-app/app/assets/images/emoji...
    - Installing assets...

## Usage

You can use this gem to replace unicode emoji characters with `img` tags linking to the appropriate emoji image.

### Image Replacement APIs:

```ruby
> Emoji.replace_unicode_moji_with_images('I ❤ Emoji')
=> "I <img alt=\"❤\" class=\"emoji\" src=\"http://localhost:3000/assets/emoji/heart.png\"> Emoji"

> Emoji.image_url_for_unicode_moji('❤')
=> "http://localhost:3000/assets/emoji/heart.png"

> Emoji.image_url_for_name('heart')
=> "http://localhost:3000/assets/emoji/heart.png"
```

### Emoji Library Index APIs:

```ruby
> index = Emoji::Index.new

> index.find_by_name('heart')
=> {"moji"=>"❤", "name"=>"heart", "name-ja"=>"ハート", "category"=>"abstract", "unicode"=>"2764"}

> index.find_by_moji('❤')
=> {"moji"=>"❤", "name"=>"heart", "name-ja"=>"ハート", "category"=>"abstract", "unicode"=>"2764"}

> index.find_by_unicode('2764')
=> {"moji"=>"❤", "name"=>"heart", "name-ja"=>"ハート", "category"=>"abstract", "unicode"=>"2764"}
```
Default configuration integrates with Rails, but you can change it with an initializer:

```ruby
# config/initializers/emoji.rb
Emoji.asset_host = "emoji.cdn.com"
Emoji.asset_path = '/assets/emoji'
Emoji.use_plaintext_alt_tags = true
```

### String Helper Methods:

You can also include the string helper module

```ruby
require 'emoji/string_ext'
```

and call methods directly on your string to return the same results:

```ruby
> 'I ❤ Emoji'.with_emoji_images
=> "I <img alt=\"❤\" class=\"emoji\" src=\"http://localhost:3000/assets/emoji/heart.png\"> Emoji"

> 'heart'.image_url
> '❤'.image_url
=> "http://localhost:3000/assets/emoji.heart.png"

> 'heart'.emoji_data
> '❤'.emoji_data
=> {"moji"=>"❤", "name"=>"heart", "name-ja"=>"ハート", "category"=>"abstract", "unicode"=>"2764"}
```

## Emoji Asset Host
By default when used with Rails, this gem will inherit Rails configured `Rails.asset_host`.  Otherwise, you will need to manually configure the `Emoji.asset_host` as a string URL or a lambda/proc.

```ruby
# String URL
Emoji.asset_host = 'http://your.com'

# Custom Host Proc, takes asset path as a param
Emoji.asset_host = lambda {|path| path.size % 2 == 0 ? 'http://even.com' : 'http://odd.com'}
```

## HTML Safety and Performance

This gem uses pure Ruby code for compatibility with different Ruby virtual machines.  However, there can be significant performance gains to escaping incoming HTML strings using optimized, native code in the `escape_utils` gem.

The `emoji` gem will try to use `escape_utils` if it's available, but does not require it.  [Benchmarks show a 10x-100x improvement](https://gist.github.com/wpeterson/c851be471bd91868716c) in HTML escaping performance, based on the size of the string being processed.

To enable native HTML escaping, add this line to your application's Gemfile:

```ruby
gem 'escape_utils'
```
## Contributors: :heart:

This project was spawned from conversation at the [BurlingtonRB conference](http://www.burlingtonrubyconference.com/) between [Steve](https://github.com/steveklabnik)/[Winfield](https://github.com/wpeterson). Together, they built the the initial gem.  Huge thanks to everyone else who's submitted code and work to the project.

* [@steveklabnik](https://github.com/steveklabnik): Created this project and made it all happen
* [@wpeterson](https://github.com/wpeterson): gem implementation
* [@ryan-orr](https://github.com/ryan-orr): Granted the official `emoji` rubygems account
* [@mikowitz](https://github.com/mikowitz): `String` ext helpers
* [@semanticart](https://github.com/semanticart): Cleanup/Ruby 1.9.3 support
* [@parndt](https://github.com/parndt): README doc fixes
* [@neuegram](https://github.com/neuegram): XSS Security Audit
* [@tumes](https://github.com/tumes): Plaintext Emoji Alt Tags
* [@poporul](https://github.com/poporul): Emoji::Index Refactoring
* [@dilkhush](https://github.com/dilkhush): Emoji::Index Search by Unicode
* [@cromulus](https://github.com/cromulus): Emoji.replace_unicode_moji_with_name() API

## Contributing

1. Fork the repo
2. Bundle Install (`bundle install`)
3. Run the Tests (`rake test`)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
