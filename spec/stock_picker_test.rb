require '../stock_picker.rb'

RSpec.describe 'Stock Picker Exercise' do
  describe 'Deals with 1 and 2 arguments' do
    it 'given 1 argument, fail' do
      expect{stock_picker([1])}.to raise_error(ArgumentError)
    end
    it 'given 2 arguments, return [0,1]' do
      expect(stock_picker([2, 1])).to eq([0,1])
    end
  end

  describe 'Simple choices' do
    it 'works on a series of 3' do
      expect(stock_picker([1,2,3])).to eq([0,2])
    end
    it 'works on a interesting series of 3' do
      expect(stock_picker([2,1,3])).to eq([1,2])
    end
  end

  describe 'Complex choices' do
    it 'works if lowest day is last' do
      expect(stock_picker([2,3,1])).to eq([0,1])
    end
    it 'works if largest day is first' do
      expect(stock_picker([3,1,2])).to eq([1,2])
    end
    it 'works if all numbers lower than first' do
      expect(stock_picker([3,2,1])).to eq([0,1])
    end
  end

  describe 'The Odin Project Example' do
    it 'works on the example given' do
      expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
    end
  end

end
