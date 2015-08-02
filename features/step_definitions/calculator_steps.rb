require "calculator"

When /^I add two integers$/ do
  @sum = Calculator.new.add(4, 5)
end

When /^I add zero to an integer$/ do
  @sum = Calculator.new.add(5, 0)
end

When /^I add the same integers in a different order$/ do
  @sum = Calculator.new.add(5, 4)
end

When /^I add three integers$/ do
  @sum = Calculator.new.add(2, 3, 4)
end

Then /^an integer is returned$/ do
  expect(@sum).to be_an Integer
end

Then /^the sum is correct$/ do
  expect(@sum).to eq 9
end

Then /^the integer is returned$/ do
  expect(@sum).to eq 5
end
