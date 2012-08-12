module Hatokura
  class << self
    def file_name_from_identifier(identifier)
      identifier.
        to_s().
        gsub(/[[:upper:]]+/) {|us| '_' + us.downcase()}.
        sub(/^_/, '')
    end
  end

  [
    :VERSION,
  ].each do |identifier|
    autoload identifier, "hatokura/#{file_name_from_identifier(identifier)}"
  end
end
