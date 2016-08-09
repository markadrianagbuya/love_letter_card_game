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
        expect(round.winner).to eq nil
      end
    end
    describe '#start' do
      it "draws a card for each player" do
        player_1 = LoveLetterCardGame::Player.new
        player_2 = LoveLetterCardGame::Player.new
        round = Round.new(players: [player_1, player_2], deck: [:guard, :priest])
        expect(round.letter_holders_for(player_1)).to eq []
        expect(round.letter_holders_for(player_2)).to eq []
        round.start
        expect(round.letter_holders_for(player_1)).to eq [:guard]
        expect(round.letter_holders_for(player_2)).to eq [:priest]
      end
    end

    # describe "guard scenario" do

    #   player_1 = instance_double(LoveLetterCardGame::Player, out?: false)
    #   player_2 = instance_double(LoveLetterCardGame::Player, out?: false)
    #   round = Round.new(deck: [:guard, :princess], players: [player_1, player_2])

    #   round.take_turn(player_1)
    #   round.discard(:guard, {target_opponent: player_2, guess: :princess})
    #   expect(round.out_of_round?(player_2)).to eq true
    #   expect(round.ended?).to eq true
    # end

  end
end

