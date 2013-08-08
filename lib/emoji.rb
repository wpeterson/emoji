require 'emoji/version'
require 'json'
require 'escape_utils'

require 'emoji/index'

module Emoji
  @@asset_host = nil
  @@asset_path = nil

  def self.asset_host
    @@asset_host || 'http://localhost:3000'
  end

  def self.asset_host=(host)
    @@asset_host = host
  end

  def self.asset_path
    @@asset_path || '/'
  end

  def self.asset_path=(path)
    @@asset_path = path
  end

  def self.image_url_for_name(name, style = :regular)
    suffix = style == :retina ? '@2x' : ''
    "#{asset_host}#{ File.join(asset_path, name) }#{suffix}.png"
  end

  def self.image_url_for_unicode_moji(moji, style = :regular)
    emoji = index.find_by_moji(moji)
    image_url_for_name(emoji['name'], style)
  end

  def self.replace_unicode_moji_with_images(string)
    return string unless string.match(index.unicode_moji_regex)

    escaped_string = EscapeUtils.escape_html(string)
    escaped_string.gsub!(index.unicode_moji_regex) do |moji|
      %Q{<img class="emoji" src="#{ image_url_for_unicode_moji(moji) }">}
    end
    escaped_string
  end

  def self.index
    @@index ||= Index.new
  end
end
