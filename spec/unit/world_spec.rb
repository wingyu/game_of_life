require "spec_helper"

module GameOfLife
  describe World do
    let(:world) { World.new(size: 3) }

    describe "#intialize" do
      it "initiates a 3x3 board" do
        aggregate_failures do
          expect(world.board.count).to eq 3
          expect(world.board[0].count).to eq 3
        end
      end
    end

    describe "#count_neighbours_for_cells" do
      it "informs a cell of the presence of live neighbours" do
        
      end
    end
  end
end
