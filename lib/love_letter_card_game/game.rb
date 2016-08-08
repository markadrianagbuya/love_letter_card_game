module LoveLetterCardGame
  class Game

    attr_accessor :deck, :players, :required_token_count

    def self.setup(number_of_players: 0)
      deck = Deck.full_deck
      deck.delete_at(rand(deck.size))
      self.new(players: Array.new(number_of_players) {Player.new(self)}, deck: deck)
    end

    def initialize(players: [], deck: [], required_token_count: 0)
      self.players = players
      self.deck = deck
      self.required_token_count = required_token_count
    end

    def get_player(player_number)
      players[player_number-1]
    end

    def ended?
      players.any?{|player| player.token_count == required_token_count}
    end
  end
end