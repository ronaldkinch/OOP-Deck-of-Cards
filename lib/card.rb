# Class of standard playing cards
class Card
  attr_reader :suit, :rank
  SUITS = %w(spade heart diamond club)
  RANKS = %w(ace king queen jack ten nine eight seven six five four three two)

  def initialize(suit, rank)
    @suit = suit if SUITS.include?(suit)
    @rank = rank if RANKS.include?(rank)
    fail(ArgumentError) if @suit.nil? || @rank.nil?
  end

  def to_s
    "#{@rank.capitalize} of #{@suit.capitalize}s" # pluralize
  end

  def self.suits
    SUITS
  end

  def self.ranks
    RANKS
  end
end
