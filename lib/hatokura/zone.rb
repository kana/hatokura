module Hatokura
  # A zone (coined term: 領域) is a place where objects can be during a game.
  #
  # There are the following zones:
  #
  # * Library,
  # * Hand,
  # * Field,
  # * Graveyard,
  # * Territory,
  # * Exile,
  # * Stack,
  # * Market,
  # * Supply,
  # * Curse pile, and
  # * Princess pile.
  #
  # Each player has his or her own library, hand, field, graveyard, and
  # territory.  The other zones are shared by all players.
  #
  # Field, graveyard, territory, exile, stack, market, curse pile, and princess
  # pile are public zones in which all players can see the cards' faces.
  # Library, hand, and supply are hidden zones in which not all players can be
  # expected to see the cards' faces.
  class Zone
    def initialize(owner, publicp)
      @owner = owner
      @cards = []
      @publicp = publicp
    end

    # The owner of this zone.
    #
    # If this zone is shared by all players, nil is returned.
    # Otherwise, the instance of a Player who owns this zone is returned.
    attr_reader :owner

    # An array-like object to express a pile of cards in this zone.
    # The 0th element is the top card of a pile, and
    # the last element is the bottom card of a pile.
    attr_reader :cards

    # Returns true if this zone is public.
    def public?
      @publicp
    end

    # Returns true if this zone is owned by a player.
    def owned?
      @owner
    end

    # Returns true if this zone is shared by all players.
    def shared?
      not owned?
    end
  end
end
