module Hatokura
  # Princess pile (original term: プリンセスカード置き場, though it is not
  # a good translation) is a zone where players enthrone their princesses from.
  class PrincessPile < Zone
    def initialize()
      super(nil, true)
    end
  end
end
