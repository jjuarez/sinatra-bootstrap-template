require 'rubygems'
require 'bundler'

Bundler.require


class MyApplication < Sinatra::Base

  configure do
  
    set :root,  File.join(File.dirname(__FILE__), '..')
    set :views, File.join(settings.root, 'views')

    SiteConfig = OpenStruct.new(
      :name   =>"MyApp Testing",
      :author =>"Javier Juarez")
  end
end