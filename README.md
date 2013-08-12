# Emoji

A Ruby gem. For emoji. For everyone. :heart:

This gem includes an image library of open-source emoji and APIs for working with them.

## Installation

Add this line to your application's Gemfile:

    gem 'emoji'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install emoji

## Usage

You can use this gem to replace unicode emoji characters with img tags linking to the appropriate emoji image.

Example configuration:
    
    # config/initializers/emoji.rb
    Emoji.asset_host = ActionController::Base.asset_host
    Emoji.asset_path = '/assets/emoji'

Image Replacement APIs:

    > Emoji.replace_unicode_moji_with_images('I ❤ Emoji')
    => "I <img class=\"emoji\" src=\"http://localhost:3000/assets/emoji/heart.png\"> Emoji"

    > Emoji.image_url_for_unicode_moji('❤')
    => "http://localhost:3000/assets/emoji/heart.png"
    
    > Emoji.image_url_for_name('heart')
    => "http://localhost:3000/assets/emoji/heart.png"

Emoji Library Index APIs:

    > index = Emoji::Index.new
    
    > index.find_by_name('heart')
    => {"moji"=>"❤", "name"=>"heart", "name-ja"=>"ハート", "category"=>"abstract", "unicode"=>"2764"}
    
    > index.find_by_moji('❤')
    => {"moji"=>"❤", "name"=>"heart", "name-ja"=>"ハート", "category"=>"abstract", "unicode"=>"2764"}

    

## Contributing

1. Fork it
2. Bundle Install (`bundle install`)
3. Run the Tests (`rake test`)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
