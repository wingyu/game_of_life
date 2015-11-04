require "spec_helper"

describe GameOfLife::Cell do
  let(:cell) { described_class.new(x: 1, y: 1) }

  describe "#live!" do
    it "should set cell's alive status to true" do
      expect{ cell.live! }.to change{ cell.alive? }.
        from(false).to(true)
    end
  end

  describe "increment_live_neighbours" do
    it "should increment a cell's live neighbours count" do
      expect{ cell.increment_live_neighbours }.to change{ cell.live_neighbours }.
        from(0).to(1)
    end
  end

  describe "#react" do
    context "cell is alive" do
      before { cell.live! }

      context "if it has greater than 3 live neighbours" do
        it "will die" do
          allow(cell).to receive(:live_neighbours).
            and_return(4)

          expect{ cell.react! }.to change{ cell.alive? }.
            from(true).to(false)
        end
      end

      context "if it has less than 2 live neighbours" do
        it "will die" do
          allow(cell).to receive(:live_neighbours).
            and_return(1)

          expect{ cell.react! }.to change{ cell.alive? }.
            from(true).to(false)
        end
      end
    end

    context "cell is dead" do
      context "if it has exactly 3 live neighbours" do
        it "will come to life" do
          allow(cell).to receive(:live_neighbours).
            and_return(3)

          expect{ cell.react! }.to change{ cell.alive? }.
            from(false).to(true)
        end
      end
    end
  end
end
