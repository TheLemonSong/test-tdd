#3#
# As #2# but added furlong conversion as homework.
#Homework# Add a furlong to km method
#Homework# 1 furlong = 0.201168 kilometers
require 'rspec';
require './furlong';

describe Furlong do
  # 'let' (RSpec) creates a local variable that can be used.
  let(:calculator) {Furlong.new}

  it "Converts 1 mile to 1.60934 km" do
    expect(calculator.miles_to_kilometres(1)).to be_within(0.0001).of(1.60934);
  end

  it "Converts a marathon of 26.219 miles to 42.194988 km" do
    expect(calculator.miles_to_kilometres(26.219)).to be_within(0.001).of(42.194988);
  end

  it "Converts 1 furlong into 0.201168 kilometers" do
    expect(calculator.furlongs_to_kilometres(1)).to be_within(0.001).of(0.201168);
  end
end



#2#
# Refactored version of below...
# pulled out calulator to simplify code.
# require 'rspec';
# require './furlong';

# describe Furlong do
#   # 'let' (RSpec) creates a local variable that can be used.
#   let(:calculator) {Furlong.new}

#   it "converts 1 mile to 1.60934 km" do
#     expect(calculator.miles_to_kilometres(1)).to be_within(0.0001).of(1.60934);
#   end

#   it "converts a marathon of 26.219 miles to 42.194988 km" do
#     expect(calculator.miles_to_kilometres(26.219)).to be_within(0.001).of(42.194988);
#   end
# end


#1#
# require 'rspec';
# require './furlong';

# describe Furlong do

#   it "converts 1 mile to 1.60934 km" do
#     calc = Furlong.new;
#     km = calc.miles_to_kilometres(1);
#     #km.should eq(1.60934);
#     #expect(km).to eq(1.60934);
#     expect(km).to be_within(0.0001).of(1.60934);
#   end

#   it "converts a marathon of 26.219 miles to 42.194988 km" do
#     calc = Furlong.new;
#     km = calc.miles_to_kilometres(26.219);
#     expect(km).to be_within(0.001).of(42.194988);
#   end
# end
