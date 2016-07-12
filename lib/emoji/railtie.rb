require 'emoji'
require 'rails'
require 'sprockets'

module Emoji
  class Railtie < Rails::Railtie
    initializer "emoji.defaults" do
      Emoji.asset_host = ActionController::Base.asset_host
      asset_prefix = Rails.application.config.assets.prefix rescue '/assets'
      Emoji.asset_path =  File.join(asset_prefix, '/emoji')
      Emoji.use_plaintext_alt_tags = false
    end

    rake_tasks do
      load File.absolute_path(File.dirname(__FILE__) + '/tasks/install.rake')
    end
  end
end
