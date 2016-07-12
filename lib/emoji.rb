require 'emoji/version'
require 'json'
require 'uri'

# Optionally load EscapeUtils if it's available
begin
  require 'escape_utils'
rescue LoadError
  require 'cgi'
end

require 'emoji/index'

require "emoji/railtie" if defined?(Rails)

module Emoji
  @asset_host = nil
  @asset_path = nil
  @use_plaintext_alt_tags = nil
  @escaper = defined?(EscapeUtils) ? EscapeUtils : CGI

  def self.asset_host
    @asset_host || 'http://localhost:3000'
  end

  def self.asset_host=(asset_host)
    @asset_host = parse_and_validate_asset_host(asset_host)
  end

  def self.parse_and_validate_asset_host(asset_host_spec)
    return '' unless asset_host_spec
    return asset_host_spec if asset_host_spec.respond_to?(:call)
    unless asset_host_spec.kind_of?(String)
      raise 'Invalid Emoji.asset_host, should be a hostname or URL prefix'
    end
    return '' unless asset_host_spec.size >= 1

    # Special Case for 'hostname:port' style URIs, not parse properly by URI.parse
    if asset_host_spec.match(/^[^:\/]+:\d+$/)
      components = asset_host_spec.split(':')
      scheme_string = 'http://'
      hostname = components.first
      port_string = ":#{components.last}"
    else
      uri = parse_asset_host_uri(asset_host_spec)
      scheme_string = extract_uri_scheme_string(asset_host_spec, uri)
      hostname = uri.hostname || uri.path
      port_string = extract_port_string(uri)
    end

    "#{ scheme_string }#{ hostname }#{ port_string }"
  end

  def self.parse_asset_host_uri(asset_host_spec)
    URI.parse(asset_host_spec)

    rescue URI::InvalidURIError
      raise 'Invalid Emoji.asset_host, should be a hostname or URL prefix'
  end

  def self.extract_uri_scheme_string(asset_host_spec, uri)
    # Special Case for Protocol Relative Scheme: //hostname.com/
    if asset_host_spec.size >= 2 && asset_host_spec[0..1] == '//'
      return '//'
    end

    # Extract Protocol from asset_host_spec URI or default to HTTP
    scheme = uri.scheme || 'http'

    "#{ scheme }://"
  end

  def self.extract_port_string(uri)
    return nil unless uri.port
    return nil if uri.port == 80 && uri.scheme == 'http'
    return nil if uri.port == 443 && uri.scheme == 'https'

    return ":#{uri.port}"
  end

  def self.asset_path
    @asset_path || '/'
  end

  def self.asset_path=(path)
    @asset_path = path
  end

  def self.use_plaintext_alt_tags
    @use_plaintext_alt_tags || false
  end

  def self.use_plaintext_alt_tags=(bool)
    @use_plaintext_alt_tags = bool
  end

  def self.asset_host_for_asset(asset_path)
    return asset_host if asset_host.kind_of?(String)

    asset_host.call(asset_path)
  end

  def self.image_url_for_name(name)
    path = "#{ File.join(asset_path, name) }.png"
    host = asset_host_for_asset(path)
    "#{host}#{path}"
  end

  def self.image_url_for_unicode_moji(moji)
    emoji = index.find_by_moji(moji)
    image_url_for_name(emoji['name'])
  end

  def self.alt_tag_for_moji(moji)
    return moji unless use_plaintext_alt_tags
    emoji = index.find_by_moji(moji)
    emoji['name']
  end

  def self.replace_unicode_moji_with_images(string)
    return string unless string
    unless string.match(index.unicode_moji_regex)
      return safe_string(string)
    end

    safe_string = safe_string(string.dup)
    safe_string.gsub!(index.unicode_moji_regex) do |moji|
      %Q{<img alt="#{alt_tag_for_moji(moji)}" class="emoji" src="#{ image_url_for_unicode_moji(moji) }">}
    end
    safe_string = safe_string.html_safe if safe_string.respond_to?(:html_safe)

    safe_string
  end

  def self.replace_named_moji_with_unicode(string)
    return string unless string
    unless string.match(index.named_moji_regex)
      return safe_string(string)
    end

    safe_string = safe_string(string.dup)
    safe_string.gsub!(index.named_moji_regex) do |name_exp|
      name = name_exp[1..-2] # Convert :heart: to heart, strips first/last chars
      emoji = index.find_by_name(name)

      emoji['moji']
    end
    safe_string = safe_string.html_safe if safe_string.respond_to?(:html_safe)

    safe_string
  end

  def self.replace_unicode_moji_with_name(string)
    return string unless string
    unless string.match(index.unicode_moji_regex)
      return safe_string(string)
    end

    safe_string = safe_string(string.dup)
    safe_string.gsub!(index.unicode_moji_regex) do |moji|
      emoji = index.find_by_moji(moji)
      ":#{emoji['name']}:"
    end
    safe_string = safe_string.html_safe if safe_string.respond_to?(:html_safe)

    safe_string
  end

  def self.safe_string(string)
    if string.respond_to?(:html_safe?) && string.html_safe?
      string
    else
      escape_html(string)
    end
  end

  def self.escape_html(string)
    @escaper.escape_html(string)
  end

  def self.index
    @index ||= Index.new
  end
end
