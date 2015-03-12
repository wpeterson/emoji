require 'emoji'
require 'rails'

module Emoji
  class Railtie < Rails::Railtie
    initializer "emoji.defaults" do
      Emoji.asset_host = ActionController::Base.asset_host
      Emoji.asset_path = '/assets/emoji'
      Emoji.use_plaintext_alt_tags = false
    end

    rake_tasks do
      load File.absolute_path(File.dirname(__FILE__) + '/tasks/install.rake')
    end
  end
end
