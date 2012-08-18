module Hatokura
  # A library (original term: 山札, though it is not a good translation) is
  # a zone.  A player's library is where that player draws cards from.
  class Library < Zone
    def initialize(owner)
      super(owner, false)
    end
  end
end
