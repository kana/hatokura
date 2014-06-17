module Hatokura
  module FairyGarden
    class FarmVillage
      def initialize()
        @name = '農村'
        @cost = 1
        @link = 1
        @main_type = :land
        @authority_point = -2
        @played_ability = Proc.new {[]}  # TODO: List moves.
      end
    end

    class NoviceMaid
      def initialize()
        @name = '見習い侍女'
        @cost = 2
        @link = nil
        @main_type = :authority
        @authority_point = -2
      end
    end
  end
end
