require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do

  before(:context) do
    @my_calculator = Calculator.new(1)
  end

  describe 'Initialization' do
    it 'is an instance of the Calculator class' do
      expect(@my_calculator).to be_instance_of(Calculator)
    end
  end

  describe 'Accessors' do
    it 'should get result' do
      expect(@my_calculator.result).to eq(1)
    end
    it 'should not set result' do
      @my_calculator.result = 2394 if respond_to? :result=
      expect(@my_calculator.result).to eq(1)
    end
  end

  describe 'Methods' do
    it 'should reset the result to given number' do
      @my_calculator.reset(5)
      expect(@my_calculator.result).to eq(5)
    end
    it 'should add a given number to the result' do
      @my_calculator.add(5)
      expect(@my_calculator.result).to eq(10)
    end
    it 'should subtract a given number from the result' do
      @my_calculator.subtract(5)
      expect(@my_calculator.result).to eq(5)
    end
    it 'should multiply the result by a given number' do
      @my_calculator.multiply(2)
      expect(@my_calculator.result).to eq(10)
    end
    it 'should divide the result by a given number' do
      @my_calculator.divide(2)
      expect(@my_calculator.result).to eq(5)
    end
    it 'should chain add(2) and multiply(2) to get 4' do
      # @my_calculator.reset(0)
      expect(@my_calculator.add(2).multiply(2).result).to eq(14)
    end
    it 'should take an operation as the first argument and apply it to a given number as the second argument' do
      @my_calculator.operation('add', 5)
      expect(@my_calculator.result).to eq(19)
    end
    it 'should undo the previous operation, and restore the previous result, which is 14' do
      @my_calculator.undo
      expect(@my_calculator.result).to eq(14)
    end
    it 'should redo the undone operation, and restore the result, which is 19' do
      @my_calculator.redo
      expect(@my_calculator.result).to eq(19)
    end
  end

end
