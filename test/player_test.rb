require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'

require "pry"

class PlayerTest < Minitest::Test

    def test_it_exist
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        deck = Deck.new([card1, card2, card3])
        player = Player.new('Clarisa', deck)
        
        assert_instance_of Player, player
    end

    def test_it_has_a_name_and_a_deck
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        deck = Deck.new([card1, card2, card3])
        player = Player.new('Clarisa', deck)
# binding.pry
        assert_equal 'Clarisa', player.name
        assert_equal deck , player.deck
    end

    def test_it_can_tell_if_player_has_lost
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        deck = Deck.new([card1, card2, card3])
        player = Player.new('Clarisa', deck)
# binding.pry
        player.deck.remove_card
        assert_equal false, player.has_lost?
        player.deck.remove_card
        assert_equal false, player.has_lost?
        player.deck.remove_card
        assert_equal true, player.has_lost?
        assert_equal deck, player.deck
        
    end

end