require File.absolute_path File.dirname(__FILE__) + '/test_helper'

describe Emoji do
  describe "image_url_for_name" do
    it 'should generate url' do
      assert_equal 'http://localhost/cyclone.png', Emoji.image_url_for_name('cyclone')
    end
  end

  describe "image_url_for_unicode_moji" do
    it 'should generate url' do
      assert_equal 'http://localhost/cyclone.png', Emoji.image_url_for_unicode_moji('🌀')
    end
  end

  describe "asset_host" do
    it 'should default to localhost' do
      assert_equal 'localhost', Emoji.asset_host
    end

    it 'should be configurable' do
      with_emoji_config(:asset_host, 'emoji') do
        assert_equal 'emoji', Emoji.asset_host
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