module Hatokura
  # Exile (original term: 国外) is a zone.  Exile is essentially a holding area
  # for cards. It used to be known as the "removed-from-the-game" zone.
  class Exile < Zone
    def initialize()
      super(nil, true)
    end
  end
end
