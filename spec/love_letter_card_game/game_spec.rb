require 'spec_helper'

module LoveLetterCardGame
  describe Game do
    describe "#ended?" do
      it "returns true if a player has reached required token count" do
        players = [
          instance_double(Player, token_count: 5),
          instance_double(Player, token_count: 3)
        ]
        game = LoveLetterCardGame::Game.new(required_token_count: 5, players: players)
        expect(game.ended?).to eq true
      end

      it "returns false if a player hasn't reached required token count" do
        players = [
          instance_double(Player, token_count: 4),
          instance_double(Player, token_count: 3)
        ]
        game = LoveLetterCardGame::Game.new(required_token_count: 5, players: players)
        expect(game.ended?).to eq false
      end
    end

    describe "#winner" do
      it "returns true if a player has reached required token count" do
        winner = instance_double(Player, token_count: 5)
        players = [
          winner,
          instance_double(Player, token_count: 3)
        ]
        game = LoveLetterCardGame::Game.new(required_token_count: 5, players: players)
        expect(game.winner).to eq winner
      end

      it "returns false if a player hasn't reached required token count" do
        players = [
          instance_double(Player, token_count: 4),
          instance_double(Player, token_count: 3)
        ]
        game = LoveLetterCardGame::Game.new(required_token_count: 5, players: players)
        expect(game.winner).to eq nil
      end
    end
  end
end

