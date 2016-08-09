module LoveLetterCardGame
  class Round
    attr_accessor :deck, :players

    def initialize(deck: [], players: [])
      self.deck = deck
      self.players = players
    end

    def ended?
      deck.empty? || players.reject(&:out?).count == 1
    end

    def winner
      if players.reject(&:out?).count == 1
        players.detect{|player| !player.out?}
      end
    end

    def start
      players.each{|player| player.draw(deck)}
    end

    def take_turn(player)
      player.draw(deck)
    end

    def discard(player, card_to_be_discarded, params)
      player.discard(card_to_be_discarded)
    end

    def discarded_letter_holders_for(player)
      player.discarded_letter_holders
    end

    def letter_holders_for(player)
      player.letter_holders
    end
  end
end
