class Deck
  attr_reader :cards
  def initialize(cards=[])
  @cards = cards
  end

  def rank_of_card_at(index)
    @cards[index].rank
  end

  def high_ranking_cards
    @cards.map do |card|
         card if card.rank >= 11   
    end.compact
  end

end