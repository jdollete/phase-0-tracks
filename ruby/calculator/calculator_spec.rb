# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'calculator'

describe Calculator do
  let(:calculator) { Calculator.new }

  it "adds two integers" do
    expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(calculator.multiply(2,3)).to eq 6
  end

  it "divides two integers" do
    expect(calculator.divide(4, 2)).to eq 2
  end

end

# Release 2 - Research
# 1. A few cheat sheet web sites:
#   - http://cheatrags.com/rspec-matchers
#   - https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
#   - From a quick glance there are many types of matchers that could be used
# 2. RSPEC Documentation: http://betterspecs.org/
3. Other matchers are:
  - Identity [.to be(expected)]
  - Comparisons [.to be >,<,>=, etc expected]
  - Truthness [.to be true]
  - Errors []
