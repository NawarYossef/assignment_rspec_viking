require'./lib/warmup'

describe Warmup do

 let(:user) { Warmup.new }

   describe '#gets_shout' do
    it "return string in upcase" do
 	    allow(user).to receive(:gets).and_return('value')
 	    expect(user.gets_shout).to eq("VALUE")
     end
   end

   describe "#triple_size" do
     it "returns triple the size of the array object" do
       array_double = instance_double('arr', size: 7)
       expect(user.triple_size(array_double)).to eq(21)
     end
    describe "#calls_some_methods" do
      # string_double = instance_double('string')

      it "raises an error if string passed is empty" do
        empty_string = ''
        expect { Warmup.new.calls_some_methods(empty_string) }.to raise_error("Hey, give me a string!")
      end

      it "calls the upcase! method on the string" do
        string = "value"
        expect(string.upcase!).to eq("VALUE")
      end

      it "calls the reverse! method on the string" do
        string = "value"
        expect(string.reverse!).to eq("eulav")
      end

    end
  end
end