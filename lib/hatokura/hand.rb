module Hatokura
  # A hand (original term: 手札) is a zone.  A player's hand is where that
  # player holds cards he or she has drawn but not played, not kept, and not
  # set yet.
  class Hand < Zone
    def initialize(owner)
      super(owner, false)
    end
  end
end
