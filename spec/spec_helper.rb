require 'bundler/setup'
require 'hatokura'

Dir['./spec/support/**/*.rb'].each do |file|
  require file
end
