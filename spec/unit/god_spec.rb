require "spec_helper"

describe GameOfLife::God do
  let(:game) { described_class.new(turns: 1, board_size: 3) }
  let(:seeds) { [[1,1]] }
  let(:seeded_cell) { game.world.board_cell(x: 1,y: 1) }

  describe "#seed_life" do
    before { game.seed_life(seeds) }

    it { expect(seeded_cell.alive?).to eq true }
  end

  describe "#next_generation" do
    before do
      game.seed_life(seeds)
      game.next_generation
    end

     it { expect(seeded_cell.alive?).to eq false }
  end

  describe "#start_life" do
    before do
      game.seed_life(seeds)
      game.start_life
    end

    it { expect(seeded_cell.alive?).to eq false }
  end
end
