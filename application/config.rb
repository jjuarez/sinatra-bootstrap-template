require 'rubygems'
require 'bundler'
require 'yaml'

Bundler.require


class MyApplication < Sinatra::Base

  configure do
  
    set :environment, :development
    set :root,  File.join(File.dirname(__FILE__), '..')
    set :views, File.join(settings.root, 'views')

    configatron.title       = "My Name"
    configatron.author      = "Javier Juarez"
    configatron.environment = settings.environment    
    configatron.config      = YAML.load_file(File.join(settings.root, 'config', 'environment.yml'))[configatron.environment]
  end
end