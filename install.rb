require 'fileutils'

puts "Installing into your rails app.."
plugin_name = 'wee_lightbox'

src =  "#{RAILS_ROOT}/vendor/plugins/#{plugin_name}/files/."
dest = "#{RAILS_ROOT}/public"
options = {:verbose => true}

FileUtils.cp_r(src, dest, options)

puts "All done!"
