module Hatokura
  # A graveyard (original term: 捨て札, though it is not a good translation) is
  # a zone.  A player's graveyard is his or her discard pile.
  class Graveyard < Zone
    def initialize(owner)
      super(owner, true)
    end
  end
end
