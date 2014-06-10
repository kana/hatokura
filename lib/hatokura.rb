require 'bundler/setup'
require "hatokura/version"

module Hatokura
  class << self
    def const_missing(identifier)
      require "hatokura/#{file_name_from_identifier(identifier)}"
      eval identifier.to_s()
    end

    def file_name_from_identifier(identifier)
      identifier
        .to_s()
        .gsub(/[[:upper:]]+/) {|us| '_' + us.downcase()}.
        sub(/^_/, '')
    end
  end
end
