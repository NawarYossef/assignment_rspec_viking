require'./lib/weapons/bow'

describe Bow do
  let(:bow) {Bow.new}
  let(:bow_8_arrows) {Bow.new(8)}

  describe '#initialize' do
    it "ensures that arrow count is set to 10 by default" do
      expect(bow.arrows).to eq(10)
    end
    it "returns the value passed upon instantiation as the default arrow count" do
      expect(bow_8_arrows.arrows).to eq(8)
    end
  end

  describe '#use' do
    it 'returns an error if the number of arrows is less than 1' do
      expect{ Bow.new(0).use }.to raise_error('Out of arrows')
    end
    it "decrement the number of arrows by 1" do
      expect{ bow_8_arrows.use }.to change(bow_8_arrows, :arrows).from(8).to(7)
    end
  end
end