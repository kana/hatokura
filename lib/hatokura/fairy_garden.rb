module Hatokura
  module FairyGarden
    class FarmVillage < Card
      Name = '農村'
      Cost = 1
      Link = 1
      MainType = :land
      AuthorityPoint = -2
      PlayedAbility = Proc.new {[]}  # TODO: List moves.
    end

    class City < Card
      Name = '都市'
      Cost = 3
      Link = 1
      MainType = :land
      PlayedAbility = Proc.new {[]}  # TODO: List moves.
    end

    class BigCity < Card
      Name = '大都市'
      Cost = 6
      Link = 1
      MainType = :land
      PlayedAbility = Proc.new {[]}  # TODO: List moves.
    end

    class NoviceMaid < Card
      Name = '見習い侍女'
      Cost = 2
      Link = nil
      MainType = :authority
      AuthorityPoint = -2
    end

    class CourtMaid < Card
      Name = '宮廷侍女'
      Cost = 3
      Link = nil
      MainType = :authority
      AuthorityPoint = 2
    end

    class Congressman < Card
      Name = '議員'
      Cost = 5
      Link = nil
      MainType = :authority
      AuthorityPoint = 3
    end

    class Duke < Card
      Name = '公爵'
      Cost = 8
      Link = nil
      MainType = :authority
      AuthorityPoint = 6
    end
  end
end
