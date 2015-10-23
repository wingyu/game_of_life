require "spec_helper"

module GameOfLife
  describe Cell do
    let(:cell) { Cell.new(x: 1, y: 1) }

    describe "#live!" do
      it "should set cell's alive status to true" do
        expect{ cell.live! }.to change{ cell.alive? }.
          from(false).to(true)
      end
    end

    describe "#react" do
      context "cell is alive" do
        before { cell.live! }

        context "if it has greater than 3 live neighbours" do
          it "will die" do
            cell.live_neighbours = 4
            expect{ cell.react }.to change{ cell.alive? }.
              from(true).to(false)
          end
        end

        context "if it has less than 2 live neighbours" do
          it "will die" do
            cell.live_neighbours = 1
            expect{ cell.react }.to change{ cell.alive? }.
              from(true).to(false)
          end
        end
      end

      context "cell is dead" do
        context "if it has exactly 3 live neighbours" do
          it "will come to life" do
            cell.live_neighbours = 3
            expect{ cell.react }.to change{ cell.alive? }.
              from(false).to(true)
          end
        end
      end
    end
  end
end
