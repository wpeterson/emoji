# encoding: UTF-8

require File.absolute_path File.dirname(__FILE__) + '/test_helper'

describe Emoji do
  describe "image_url_for_name" do
    it 'should generate url' do
      assert_equal 'http://localhost:3000/cyclone.png', Emoji.image_url_for_name('cyclone')
    end

    it 'should allow empty asset_host' do
      with_emoji_config(:asset_host, '') do
        assert_equal '/cyclone.png', Emoji.image_url_for_name('cyclone')
      end
    end

    it 'should use proc asset_host' do
      with_emoji_config(:asset_host, lambda {|path| 'http://proc.com' }) do
        assert_equal 'http://proc.com/cyclone.png', Emoji.image_url_for_name('cyclone')
      end
    end
  end

  describe "image_url_for_unicode_moji" do
    it 'should generate url' do
      assert_equal 'http://localhost:3000/cyclone.png', Emoji.image_url_for_unicode_moji('🌀')
    end
  end

  describe "asset_host" do
    it 'should default to localhost' do
      assert_equal 'http://localhost:3000', Emoji.asset_host
    end

    it 'should allow hostname and port simple' do
      with_emoji_config(:asset_host, 'emoji:3000') do
        assert_equal 'http://emoji:3000', Emoji.asset_host
      end
    end

    it 'should allow hostname only and default scheme to http' do
      with_emoji_config(:asset_host, 'emoji') do
        assert_equal 'http://emoji', Emoji.asset_host
      end
    end

    it 'should allow protocol relative URL' do
      with_emoji_config(:asset_host, '//emoji') do
        assert_equal '//emoji', Emoji.asset_host
      end
    end

    it 'should allow protocol relative UR with port' do
      with_emoji_config(:asset_host, '//emoji:3000') do
        assert_equal '//emoji:3000', Emoji.asset_host
      end
    end

    it 'should respect protocol scheme' do
      with_emoji_config(:asset_host, 'https://emoji') do
        assert_equal 'https://emoji', Emoji.asset_host
      end
    end

    it 'should allow setting port' do
      with_emoji_config(:asset_host, 'http://emoji:3000') do
        assert_equal 'http://emoji:3000', Emoji.asset_host
      end

    end

    it 'should coerce nil/empty URI' do
      with_emoji_config(:asset_host, nil) do
        assert_equal '', Emoji.asset_host
      end
      with_emoji_config(:asset_host, '') do
        assert_equal '', Emoji.asset_host
      end
    end

    it 'should allow proc' do
      asset_proc = lambda {|path| "proc.com"}
      with_emoji_config(:asset_host, asset_proc) do
        assert_equal asset_proc, Emoji.asset_host
      end
    end
  end

  describe "asset_path" do
    it 'should default to /' do
      assert_equal '/', Emoji.asset_path
    end

    it 'should be configurable' do
      with_emoji_config(:asset_path, '/emoji') do
        assert_equal '/emoji', Emoji.asset_path
      end
    end
  end

  describe "use_plaintext_alt_tags" do
    it 'should default to false' do
      refute Emoji.use_plaintext_alt_tags
    end

    it 'should be configurable' do
      with_emoji_config(:use_plaintext_alt_tags, true) do
        assert Emoji.use_plaintext_alt_tags
      end
    end
  end

  describe 'replace_unicode_moji_with_name' do
    it 'should return original string without emoji' do
      assert_equal "foo", Emoji.replace_unicode_moji_with_name('foo')
    end
    it 'should replace an emoji with its ascii name' do
      base_string = "I ❤ Emoji"
      assert_equal "I :heart: Emoji", Emoji.replace_unicode_moji_with_name(base_string)
    end
  end

  describe 'replace_named_moji_with_unicode' do
    it 'should return the original string without emoji' do
      assert_equal "foo", Emoji.replace_named_moji_with_unicode('foo')
    end

    it 'should replace the markdown-esque emoji name with its unicode equivalent' do
      base_string = "I :heart: Emoji"
      assert_equal "I ❤ Emoji", Emoji.replace_named_moji_with_unicode(base_string)
    end

    it 'should be able to replace multiple emoji in one go' do
      base_string = "I :heart: :invalid: Emoji"
      assert_equal "I ❤ :invalid: Emoji", Emoji.replace_named_moji_with_unicode(base_string)
    end
  end

  describe "replace_unicode_moji_with_images" do
    it 'should return original string without emoji' do
      assert_equal "foo", Emoji.replace_unicode_moji_with_images('foo')
    end

    it 'should escape html in non html_safe aware strings' do
      replaced_string = Emoji.replace_unicode_moji_with_images('❤<script>')
      assert_equal "<img alt=\"❤\" class=\"emoji\" src=\"http://localhost:3000/heart.png\">&lt;script&gt;", replaced_string
    end

    it 'should replace unicode moji with img tag' do
      base_string = "I ❤ Emoji"
      replaced_string = Emoji.replace_unicode_moji_with_images(base_string)
      assert_equal "I <img alt=\"❤\" class=\"emoji\" src=\"http://localhost:3000/heart.png\"> Emoji", replaced_string
    end

    it 'should use plaintext alt tags if configured to do so' do
      with_emoji_config(:use_plaintext_alt_tags, true) do
        base_string = "I ❤ Emoji"
        replaced_string = Emoji.replace_unicode_moji_with_images(base_string)
        assert_equal "I <img alt=\"heart\" class=\"emoji\" src=\"http://localhost:3000/heart.png\"> Emoji", replaced_string
      end
    end

    it 'should handle nil string' do
      assert_equal nil, Emoji.replace_unicode_moji_with_images(nil)
    end

    describe 'with html_safe buffer' do
      it 'should escape non html_safe? strings in emoji' do
        string = HtmlSafeString.new('❤<script>')

        replaced_string = string.stub(:html_safe?, false) do
          Emoji.replace_unicode_moji_with_images(string)
        end

        assert_equal "<img alt=\"❤\" class=\"emoji\" src=\"http://localhost:3000/heart.png\">&lt;script&gt;", replaced_string
      end

      it 'should escape non html_safe? strings in all strings' do
        string = HtmlSafeString.new('XSS<script>')

        replaced_string = string.stub(:html_safe?, false) do
          Emoji.replace_unicode_moji_with_images(string)
        end

        assert_equal "XSS&lt;script&gt;", replaced_string
      end

      it 'should not escape html_safe strings' do
        string = HtmlSafeString.new('❤<a href="harmless">')

        replaced_string = string.stub(:html_safe?, true) do
          Emoji.replace_unicode_moji_with_images(string)
        end

        assert_equal "<img alt=\"❤\" class=\"emoji\" src=\"http://localhost:3000/heart.png\"><a href=\"harmless\">", replaced_string
      end

      it 'should always return an html_safe string for emoji' do
        string = HtmlSafeString.new('❤')
        replaced_string = string.stub(:html_safe, 'safe_buffer') do
           Emoji.replace_unicode_moji_with_images(string)
        end

        assert_equal "safe_buffer", replaced_string
      end

      it 'should always return an html_safe string for any string' do
        string = HtmlSafeString.new('Content')
        replaced_string = string.stub(:html_safe, 'safe_buffer') do
           Emoji.replace_unicode_moji_with_images(string)
        end

        assert_equal "Content", replaced_string
      end
    end
  end

  class HtmlSafeString < String
    def initialize(*); super; end
    def html_safe; self; end
    def html_safe?; true; end
    def dup; self; end
  end

  def with_emoji_config(name, value)
    original_value = Emoji.send(name)
    begin
      Emoji.send("#{name}=", value)
      yield
    ensure
      Emoji.send("#{name}=", original_value)
    end
  end
end
