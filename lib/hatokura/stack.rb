module Hatokura
  # The stack (coined term: スタック, introduced to clear rules) is the zone in
  # which cards, activated abilities, and triggered abilities wait to resolve.
  #
  # NB: The term "stack" (original term: スタック) is already used by 課税 to
  # express a pile of cards in a market.  It's a good choice of words because
  # it represents status of a market in a game with printed cards well.  But we
  # need another "stack" to clear how to resolve cards and abilities.  So that
  # we decided to use slots (coined term: スロット) to express the original
  # stack.
  class Stack < Zone
    def initialize()
      super(nil, true)
    end
  end
end
