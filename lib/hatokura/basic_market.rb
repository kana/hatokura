module Hatokura
  # Original term: ベーシックマーケット
  class BasicMarket
    def initialize()
      super
      @publicp = true
      @stacks = {}
      {
        FarmVillage: 20,
        City: 30,
        BigCity: 20,
        CourtMaid: 12,
        Congressman: 12,
        Duke: 12,
      }.each do |card_name, count|
        @stacks[card_name] = []
        count.times do
          @stacks[card_name] << FairyGarden.const_get(card_name)
        end
      end
    end

    # TODO: Put/remove tokens onto/from each stack.
    attr_reader :stacks
  end
end
