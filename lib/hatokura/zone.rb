module Hatokura
  # A zone represents a place where objects can exist during a game.
  #
  # Original term: 領域
  class Zone
    def initialize()
      @cards = []
    end

    # TODO: Define the owner of a zone for (actual) multiplayer games.

    # Returns true for public zones such as Field and Market.
    # Cards in public zones are always revealed.
    def public?
      @publicp
    end

    # Represent a pile of cards in this zone.
    #
    # The 0th element is corresponding to the top card of the pile, and
    # the last element is corresponding to the bottom card of the pile.
    #
    # Note that cards in zones should not be accessed from everywhere.
    # Cards should be accessed via high-level API.
    protected def cards
      @cards
    end
  end
end
