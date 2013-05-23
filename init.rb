APP_DIRECTORY = File.join(File.dirname(__FILE__), 'application')
$:.push APP_DIRECTORY


[:config, :helpers, :error_handler, :application].each do |file| 

  file_name = File.join(APP_DIRECTORY, "#{file}.rb")
  
  require file_name if File.exist?(file_name)
end