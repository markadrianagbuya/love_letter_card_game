require 'spec_helper'

module LoveLetterCardGame
  describe Round do
    describe "#ended?" do
      it "returns true if deck contains no cards" do
        round = Round.new(deck: [], players: [])
        expect(round.ended?).to eq true
      end

      it "returns true if deck contains no cards" do
        round = Round.new(deck: [:guard], players: [])
        expect(round.ended?).to eq false
      end
    end
  end
end

