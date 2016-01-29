require 'rspec'
require 'calculator'

describe Calculator do
	describe 'addition' do
		it 'does not care what order numbers are added' do
			calc = Calculator.new
			expect(calc.add(5,9)).to eq 14
			expect(calc.add(9,5)).to eq 14
		end
		
		it 'does not change when 0 is added' do
			calc = Calculator.new
			expect(calc.add(12,0)).to eq 12
		end
	end
	
	describe 'subtraction' do
		it 'does care about the order of numbers' do
			calc = Calculator.new
			expect(calc.subtract(2,1)).to eq 1
			expect(calc.subtract(1,2)).to eq -1
		end
		
		it 'does not change when 0 is subtracted' do
			calc = Calculator.new
			expect(calc.subtract(5,0)).to eq 5
		end
		
		it 'returns 0 when subtracting a number from itself' do
			calc = Calculator.new
			expect(calc.subtract(5,5)).to eq 0
		end
	end
	
	describe 'multiply' do
		it 'does not care what order numbers are multiplied' do
			calc = Calculator.new
			expect(calc.multiply(5,9)).to eq 45
			expect(calc.multiply(9,5)).to eq 45
		end
		
		it 'multiplies by 1 and returns the first number' do
			calc = Calculator.new
			expect(calc.multiply(5,1)).to eq 5
		end
		
		it 'multiplies by 0 and returns 0' do
			calc = Calculator.new
			expect(calc.multiply(5,0)).to eq 0
		end
	end
	
	describe 'divide' do
		it 'does matter what order numbers are divided' do
			calc = Calculator.new
			expect(calc.divide(10,2)).to eq 5
			expect(calc.divide(2.0,10.0)).to eq 0.2
		end
		
		it 'returns the first integer when dividing by 1' do
			calc = Calculator.new
			expect(calc.divide(10,1)).to eq 10
		end
		
		it 'returns 0 when dividing 0 by anything' do
			calc = Calculator.new
			expect(calc.divide(0,2)).to eq 0
		end
		
		it 'throws an error when dividing by 0' do
			calc = Calculator.new
			expect{calc.divide(1,0)}.to raise_error(ZeroDivisionError)
		end
	end
end