module Hatokura
  # A player (original term: プレイヤー) is one of the people in the game.
  #
  # The active player (coined term: アクティブ・プレイヤー) is the player whose
  # turn it is.  The other players are nonactive players (coined term:
  # 非アクティブ・プレイヤー).
  #
  #
  class Player
    # The name of this player.
    attr_accessor :name

    # The library of this player.
    attr_accessor :library

    # The hand of this player.
    attr_accessor :hand

    # The graveyard of this player.
    attr_accessor :graveyard

    # The territory of this player.
    attr_accessor :territory
  end
end
