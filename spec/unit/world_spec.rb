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

    describe "#cell" do
      it "should map x and y coordinates to the board's structure" do
        expect(world.board_cell(x: 2, y: 1)).to eq world.board[1][2]
      end
    end

    describe "#count_live_neighbours_for_cells" do
      before do
        neighbouring_cell = world.board_cell(x: 2, y: 2)
        neighbouring_cell.live!
        world.count_live_neighbours_for_cells
      end

      context "count for cell with only valid neighbouts" do
        it "informs a cell of the presence of live neighbours" do
          cell = world.board_cell(x: 1, y: 1)

          expect(cell.live_neighbours).to eq 1
        end
      end

      context "count for cell with some invalid neighbours" do
        it "informs a cell of the presence of live neighbours" do
          cell = world.board_cell(x: 0, y: 0)

          expect(cell.live_neighbours).to eq 0
        end
      end
    end
  end
end
