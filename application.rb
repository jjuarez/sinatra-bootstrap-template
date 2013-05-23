require 'rubygems'
require 'sinatra'
require 'haml'

#require 'bundler/setup'
#Bundler.setup(:default)


class MyApplication < Sinatra::Base
  
  configure do
    
    set :root,  File.dirname(__FILE__)
    set :views, File.join(settings.root, 'views')

    SiteConfig = OpenStruct.new(
      :name   =>"Openshift Testing",
      :author =>"Javier Juarez")
  end

  get '/' do

    haml :root
  end
end
