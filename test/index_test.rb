require File.absolute_path File.dirname(__FILE__) + '/test_helper'

require 'debugger'

describe Emoji::Index do
  let(:index) { Emoji::Index.new }

  describe "find_by_name" do
    it 'should find cyclone emoji' do
      assert index.find_by_name('cyclone')
    end
  end

  describe "find_by_moji" do
    it 'should find cyclone emoji by moji character' do
      assert index.find_by_moji('🌀')
    end
  end
end