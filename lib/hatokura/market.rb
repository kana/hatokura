module Hatokura
  # Market (original term: マーケット) is a zone where players can buy cards
  # from.
  #
  # Market consists of 5 + 8 slots (original term: スタック, see also
  # Hatokura::Stack for why another term is chosen) where cards can be put in.
  #
  # 5 slots are basic.  Basic slots (original term: ベーシックマーケット) are
  # fullly filled with basic cards when a game begins.  The other 8 slots are
  # random.  Random slots (original term: ランダムマーケット) are randomly
  # filled with common and rare cards from supply.
  #
  # NB: According to the rulebook of the basic set, p.11-12, it might be better
  # to consider that
  #
  # * There are basic market and random market, and
  # * The term "market" refers both markets.
  #
  # But
  #
  # * It is not necessary to distinguish both markets when a game begins,
  # * It is a bit teddious to express the structure by code,
  # * There is no card to deal with the difference of both markets as of
  #   2012-08-10, the release of Northern Enchantress (北限の魔女), and
  # * It is easy to support the structure if it is really necessary.
  #
  # So both markets are not distinct and treated as a single zone in this gem.
  class Market < Zone
    def initialize()
      super(nil, true)
    end

    # TODO: Define slots.
  end
end
