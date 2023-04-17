# デッキを表すクラス
class Deck
  attr_reader :cards  # デッキ内のカードを読み取るアクセサ

  # カードを初期化
  def initialize
    @cards = build_deck  # デッキを構築
    @cards = []
    # カードを生成してデッキに追加
    ['♠', '♣', '♥', '♦'].each do |mark|
      (1..13).each do |number|
        card = Card.new(mark, number)
        @cards << card
      end
    end
  end

  suits.product(values).map { |suit, value| Card.new(value, suit) }.shuffle
end

# デッキからカードを1枚引く（ランダム）
def draw
  @cards.shuffle!.pop
end