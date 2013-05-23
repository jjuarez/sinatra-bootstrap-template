class MyApplication < Sinatra::Base
 
  get '/' do
    
    haml :root
  end
end