

require_relative 'boot'

require 'rails/all'
require 'csv'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Annaler
  class Application < Rails::Application



    # config.enable_dependency_loading = true

    config.time_zone = "Taipei"
    config.autoload_paths << Rails.root.join('lib')



    config.i18n.default_locale = :'en' 
    
    #config.web_console.development_only = false
    config.assets.enabled = true

    # config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    # config.assets.precompile += Ckeditor.assets
    # config.assets.precompile += %w(ckeditor/*)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.action_dispatch.default_headers = {
    	'X-Frame-Options' => 'ALLOWALL'
	   }


  end
end
