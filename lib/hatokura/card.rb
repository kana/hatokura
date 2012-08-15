module Hatokura
  # A card is the main component of games.
  #
  # A card has several characteristics.
  # Cards can have some or all of the characteristics.
  # Characteristics are usually not changed.
  #
  # A card has several status.
  # Status are often changed during a game.
  #
  # Original term: カード
  class Card
    class << self
      alias_method :characteristic, :attr_accessor
      alias_method :status, :attr_accessor
    end

    # Original term: カード名称
    characteristic :name

    # Original term: コスト
    characteristic :cost

    # Original term: リンクシンボル or 連結
    characteristic :link

    # Original term: カードタイプ
    characteristic :types

    # Original term: サブタイプ
    characteristic :subtype

    # Original term: N/A (エキスパンション・シンボル)
    characteristic :expansion

    # A list of effects which might be created when this card is resolved.
    #
    # Original term: 効果
    characteristic :effects

    # A list of activated abilities which this card has.
    #
    # Original term: 起動型能力
    characteristic :activated_abilities

    # A list of triggered abilities which this card has.
    #
    # Original term: N/A (誘発型能力)
    characteristic :triggered_abilities

    # A list of static abilities which this card has.
    #
    # Original term: N/A (常在型能力)
    characteristic :static_abilities

    # The owner of this card.
    # It might be nil if this card is not owned by any player.
    # For example, cards in the market are not owned by any player.
    #
    # Original term: N/A (所有者)
    status :owner

    # For example,
    #
    # * Cards in the market are revealed.
    #
    # * Cards in the supply are not revealed.
    #
    # * Cards in hands are usually not revealed.
    #   But sometimes a partial hand is revealed as a result of an effect.
    #
    # Original term: N/A (公開状態)
    status :revealed

    # A flag to record some action is taken in a turn.
    #
    # Original term: N/A (タップ状態)
    status :tapped
  end
end
