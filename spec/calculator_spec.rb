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
	
end