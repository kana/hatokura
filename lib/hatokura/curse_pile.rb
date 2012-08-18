module Hatokura
  # Curse pile (original term: 呪いカード置き場) is a zone where players get
  # 呪い cards from for some reason.
  class CursePile < Zone
    def initialize()
      super(nil, true)
    end
  end
end
