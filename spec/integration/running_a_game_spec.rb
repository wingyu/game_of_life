require "spec_helper"

describe "Conway's Game of Life" do
  let(:world) { GameOfLife::World.new(size: 3) }
  let(:god) { GameOfLife::God.new(turns: 4, world: world) }

  context "introducing a Blinker into the world" do
    let(:seeds) { [[1,0],[1,1],[1,2]] }
    before do
      god.seed_life(seeds)
      god.start_life
    end

    it "should still be alive by end of fourth generation" do
      aggregate_failures do
        expect(
          world.board_cell(x: 1, y: 0).alive?
        ).to eq true

        expect(
          world.board_cell(x: 1, y: 1).alive?
        ).to eq true

        expect(
          world.board_cell(x: 1, y: 2).alive?
        ).to eq true
      end
    end
  end
end
