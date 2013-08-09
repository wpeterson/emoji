class String
  def with_emoji_images
    Emoji.replace_unicode_moji_with_images(self)
  end

  def image_url
    Emoji.image_url_for_name(self.emoji_data['name'])
  end

  def emoji_data
    index = Emoji.index
    index.find_by_moji(self) || index.find_by_name(self)
  end
end
