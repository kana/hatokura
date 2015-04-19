module Hatokura
  # A card is the main component of games.
  #
  # A card has several characteristics.
  # Cards can have some or all of the characteristics.
  # Characteristics are usually not changed.
  #
  # A card has also several status.
  # Status are often changed during a game.
  #
  # Original term: カード
  class Card
    class << self
      def constant_name(name)
        name.to_s.gsub(/_?([a-z])([a-z]*)/) {$1.upcase + $2}
      end

      def characteristic name
        instance_eval <<-"END"
          define_method :#{name} do
            self.class::#{constant_name(name)}
          end
        END
      end

      alias_method :status, :attr_accessor
    end

    # Original term: カード名称
    # Possible value: String
    # TODO: 2 or more names
    # https://twitter.com/HeartofCrown/status/478408662638002176
    characteristic :name

    # Original term: コスト
    # Possible value: Integer
    characteristic :cost

    # Original term: リンクシンボル
    # Possible value: Integer or nil
    characteristic :link

    # Original term: メインタイプ
    # Possible value: One of the following symbols:
    #   :princess    プリンセス
    #   :support     サポート
    #   :land        領地
    #   :action      行動
    #   :attack      攻撃
    #   :defense     防衛
    #   :authority   継承権
    #   :trouble     災い
    # TODO: 2 or more main types
    characteristic :main_type

    # TODO: Add subtype
    # TODO: Add expansion?

    # Original term: N/A
    # Possible value: One of the following symbols:
    #   :basic       ベーシック
    #   :common      コモン
    #   :rare        レア
    characteristic :rarity

    # Original term: 継承点
    # Possible value: Integer or nil
    characteristic :authority_point

    # Original term: N/A
    # Possible value: Proc or nil.  Proc returns moves.
    #
    # Unfortunately, the ruleboook uses terms 能力/ability and 効果/effect
    # interchangably.  It might be confusing.
    #
    # So this gem supposes that all cards have several abilities and
    # abilities make effects.  In other words, no card have effects.
    # (Note that some counters also have abilities.  So we should consider
    # that "objects" (including cards and counters) may have abilities.)
    #
    # Played abilities make effects when cards are played.
    # Land cards and action cards can have played abilities.
    #
    # Each card has at most one played ability.  If a played card such as
    # 鉱山都市 makes several effects, a single played ability is considered to
    # make those effects.
    #
    # TODO: But played abilities are just a concept for rulings.  We don't
    # have to use the concept to implement.  It might be better to
    # implement a played ability as a method provided via Playable module.
    characteristic :played_ability

    # For ease of implementations, several static abilities are expressed as
    # a special kind of attributes.  For example, 継承点/authority point is
    # a static ability, but it is expressed as an attribute of a card.
    # TODO: characteristic :static_abilities

    # TODO: characteristic :triggered_abilities

    # TODO: characteristic :original_text

    # status :owner - is infered from the zone where a card exists.

    # Original term: N/A (カードの公開状態)
    # Possible value: true or false
    status :revealed

    # TODO: status :tapped
  end
end
