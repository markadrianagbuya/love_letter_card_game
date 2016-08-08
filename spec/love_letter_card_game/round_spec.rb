require 'spec_helper'

module LoveLetterCardGame
  describe Round do
    describe "#ended?" do
      it "returns true if deck contains no cards" do
        round = Round.new(deck: [], players: [])
        expect(round.ended?).to eq true
      end

      it "returns false if deck contains cards" do
        round = Round.new(deck: [:guard], players: [])
        expect(round.ended?).to eq false
      end

      it "is true when all but one players are out" do
        players = [instance_double(LoveLetterCardGame::Player, out?: true), instance_double(LoveLetterCardGame::Player, out?: false)]
        round = Round.new(players: players, deck: [:guard])
        expect(round.ended?).to eq true
      end

      it "is false when more than one player is still in" do
        players = [instance_double(LoveLetterCardGame::Player, out?: false), instance_double(LoveLetterCardGame::Player, out?: false)]
        round = Round.new(players: players, deck: [:guard])
        expect(round.ended?).to eq false
      end
    end
    describe "#winner" do
      it "is true when all but one players are out" do
        out_player = instance_double(LoveLetterCardGame::Player, out?: true)
        in_player = instance_double(LoveLetterCardGame::Player, out?: false)
        players = [in_player, out_player]
        round = Round.new(players: players, deck: [:guard])
        expect(round.winner).to eq in_player
      end

      it "is false when more than one player is still in" do
        players = [instance_double(LoveLetterCardGame::Player, out?: false), instance_double(LoveLetterCardGame::Player, out?: false)]
        round = Round.new(players: players, deck: [:guard])
        expect(round.ended?).to eq false
      end
    end
  end
end

