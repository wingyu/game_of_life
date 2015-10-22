require "spec_helper"

module GameOfLife
  describe World do
    describe "#intialize" do
      let(:world) { World.new(size: 3) }

      it "initiates a 3x3 board" do
        aggregate_failures do
          expect(world.board.count).to eq 3
          expect(world.board[0].count).to eq 3
        end
      end
    end
  end
end
