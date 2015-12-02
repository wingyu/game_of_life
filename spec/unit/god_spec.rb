require "spec_helper"

describe GameOfLife::God do
  let(:world) { GameOfLife::World.new(size: 3) }
  let(:god) { described_class.new(turns: 1, world: world) }
  let(:seeds) { [[1,1]] }
  let(:seeded_cell) { world.board_cell(x: 1,y: 1) }

  describe "#seed_life" do
    before { god.seed_life(seeds) }

    it { expect(seeded_cell.alive?).to eq true }
  end

  describe "#start_life" do
    before do
      god.seed_life(seeds)
      god.start_life
    end

    it { expect(seeded_cell.alive?).to eq false }
  end
end
