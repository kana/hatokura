require 'bundler/setup'

module Hatokura
  # = Terms of this gem and corresponding terms of Heart of Crown
  #
  # (*BAD) ... Not a good translation.  Should be replaced with better words.
  #
  #
  # == Basic components
  #
  # Game                 ゲーム
  # Player               プレイヤー
  # You                  あなた
  # Opponent             対戦相手
  # Deck                 デッキ
  # Card                 カード
  #
  #
  # == Turn
  #
  # Turn                 ターン
  # Main phase           メインフェイズ
  # Second phase         セカンドフェイズ
  # Cleanup phase        クリンナップフェイズ
  # Hand-draw phase      手札補充フェイズ
  # Market-draw phase    マーケット補充フェイズ
  #
  #
  # == Zone
  #
  # Zone                 領域
  # Hand                 手札
  # Library              山札(*BAD)
  # Graveyard            捨て札(*BAD)
  # Territory            直轄地
  # Field                場
  # Exile                国外
  # Market               マーケット
  # Basic market         ベーシックマーケット
  # Random market        ランダムマーケット
  # Supply               サプライ
  # Curse stack          呪い置き場
  # Princess stack       プリンセスカード置き場
  # Market stack         マーケットのスタック
  #
  #
  # == Verb
  #
  # Exile                追放する
  # Shuffle              シャッフルする
  # Resolve              解決する
  # Get X coins          Xコインを得る
  # Draw                 ドローする
  # Aquire               獲得する
  # Buy                  購入する
  # Put into one's hand  手札に加える
  # Enthrone             擁立する
  # Choose               選ぶ
  # Set                  セットする
  # Keep                 キープする
  # Recall               リコールする
  # Play                 プレイする
  # Reveal               公開する
  # Discard              捨てる
  # Remake one's library 山札を補充する
  # In response to X     Xに対応して
  # Whenever one owns    入手した時
  #     Note that the current (2012-08-13) rule uses the following phrase:
  #     "獲得した時".  But it is confusing, because it implies also
  #     "手札に加える" from any zone which is not your one.  To clear text,
  #     we use "入手した時" in this gem.
  #
  #
  # == Card type
  #
  # Authority            継承権
  # Action               行動
  # Attack               攻撃
  # Defense              防衛
  # Curse                呪い
  # Land                 領地
  # Princess             プリンセス
  #
  #
  # == Subtype
  #
  # Army                 兵力
  # Magic                魔法
  # Maid                 侍女
  # Merchant             商人
  # Trick                計略
  #
  #
  # == Rarity
  #
  # Basic                ベーシック
  # Common               コモン
  # Rare                 レア
  #
  #
  # == Characteristics
  #
  # Name                 名称
  # Card name            カード名
  # Card type            カードタイプ
  # Subtype              サブタイプ
  # Cost                 コスト
  # Rarity               稀少度
  # Link                 リンク
  # (Rule) text          テキスト
  # Ability              能力
  #
  #
  # == Ability
  #
  # Activated ability    起動型能力
  # -                    特殊起動型能力
  #     Though this term is defined in the rulebook, it does not make sense to
  #     categorize.  So that we don't use the term in this gem.
  # Triggered ability    誘発型能力
  #     This is a coined term in this gem to clear text.
  #     Several cards have triggered abilities.
  #     For example, 鉱山都市 has the following ability:
  #     "Whenever you own this card, you get 2 mine counters."
  # Static ability       常在型能力
  #     This is also a coined term in this gem to clear text.
  #     Several cards have this abilities.
  #     For example, 見習い侍女 has the following ability:
  #     "You get -2 authority as long as this card is set to your territory."
  #
  #
  # == Cost
  #
  # Buy cost             購入コスト
  # Enthronement cost    擁立コスト
  # Activation cost      起動コスト
  #
  #
  # == Other nouns
  #
  # Counter              カウンター
  # Token                トークン
  # Coronation           戴冠式
  # Overtime             延長戦
  # Coin                 コイン
  # Authority            継承点
  # Mode                 モード
  #     This is a coined term in this gem to clear text.  Several cards are
  #     modal.  To play a modal card, its controller has to choose a mode.
  #     For example, 交易船 has two modes -- "Get 2 coin." and "Draw 2 cards."
  # Effect               効果
  #     Note that sometimes "効果" is used to express "能力" in printed cards.
  #     We have to take care not to confuse both terms.

  class << self
    def file_name_from_identifier(identifier)
      identifier.
        to_s().
        gsub(/[[:upper:]]+/) {|us| '_' + us.downcase()}.
        sub(/^_/, '')
    end
  end

  [
    :Card,
    :Hand,
    :Library,
    :Player,
    :VERSION,
    :Zone,
  ].each do |identifier|
    autoload identifier, "hatokura/#{file_name_from_identifier(identifier)}"
  end
end
