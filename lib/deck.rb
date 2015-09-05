# Class of standard card deck
class Deck
  attr_reader :cards

  def initialize
    @cards = Card.suits.product(Card.ranks).map do |el|
      Card.new(el[0], el[1])
    end
  end
end
