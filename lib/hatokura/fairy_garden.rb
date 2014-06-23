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

    class CourtMaid
      Name = '宮廷侍女'
      Cost = 3
      Link = nil
      MainType = :authority
      AuthorityPoint = 2
    end

    class Congressman
      Name = '議員'
      Cost = 5
      Link = nil
      MainType = :authority
      AuthorityPoint = 3
    end

    class Duke
      Name = '公爵'
      Cost = 8
      Link = nil
      MainType = :authority
      AuthorityPoint = 6
    end
  end
end
