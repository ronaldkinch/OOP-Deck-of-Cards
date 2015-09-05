require "spec_helper"
require "card"

# As a developer,
# I want to create a card with a particular suit and rank
# So that I can build a deck with the created card.

describe Card do
  before do
    @valid_card = Card.new("spade", "ace")
  end

  it "raises an error if invalid" do
    proc { Card.new("sword", "trey") }.must_raise ArgumentError
  end

  it "creates a card" do
    @valid_card.suit.must_match "spade"
    @valid_card.rank.must_match "ace"
  end

  it "displays a card, valid suits and ranks" do
    @valid_card.to_s.must_match "Ace of Spades"
    Card.suits.length.must_equal 4
    Card.ranks.length.must_equal 13
  end
end
