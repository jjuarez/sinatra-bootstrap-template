class MyApplication < Sinatra::Base
 
  # The real application goes here
  get '/' do
    
    haml :root
  end
end