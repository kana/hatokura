module Hatokura
  # A territory (original term: 直轄地) is a zone.  A player's territory is the
  # home of his or her princess.
  class Territory < Zone
    def initialize(owner)
      super(owner, true)
    end
  end
end
