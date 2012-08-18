module Hatokura
  # A field (original term: 場) is a zone.  A player's field is where that
  # player puts cards he or she has played in his or her turn.
  class Field < Zone
    def initialize(owner)
      super(owner, true)
    end
  end
end
