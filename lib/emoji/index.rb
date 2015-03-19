require 'forwardable'

module Emoji
  class Index
    extend Forwardable

    attr_reader :unicode_moji_regex

    def_delegator :@emoji_by_moji, :[], :find_by_moji
    def_delegator :@emoji_by_name, :[], :find_by_name

    def initialize(emoji_list=nil)
      emoji_list ||= begin
        emoji_json = File.read(File.absolute_path(File.dirname(__FILE__) + '/../../config/index.json'))
        JSON.parse(emoji_json)
      end

      @emoji_by_name = {}
      @emoji_by_moji = {}

      emoji_list.each do |emoji_hash|
        name = emoji_hash['name']
        @emoji_by_name[name] = emoji_hash if name

        moji = emoji_hash['moji']
        @emoji_by_moji[moji] = emoji_hash if moji
      end

      @unicode_moji_regex = /#{@emoji_by_moji.keys.join('|')}/
    end
  end
end
