module Hatokura
  module FairyGarden
    class FarmVillage
      Name = '農村'
      Cost = 1
      Link = 1
      MainType = :land
      AuthorityPoint = -2
      PlayedAbility = Proc.new {[]}  # TODO: List moves.
    end

    class NoviceMaid
      Name = '見習い侍女'
      Cost = 2
      Link = nil
      MainType = :authority
      AuthorityPoint = -2
    end
  end
end