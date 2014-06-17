require 'bundler/setup'
require 'hatokura'

Dir['./spec/support/**/*.rb'].sort().each do |file|
  require file
end
