require "spec_helper"
require "deck"

describe Deck do
  before do
    @deck = Deck.new
  end

  it "creates a deck of 52 unique cards" do
    @deck.cards.length.must_equal 52
    @deck.cards.uniq.length.must_equal 52
  end
end
