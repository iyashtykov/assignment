require 'rspec'
require_relative '../calculator' 

describe Calculator do 
  before { @calculator = Calculator.new('RSpec calculator')}



  it "should add 2 numbers correctly" do
  	expect(@calculator.add(2, 2)).to eq 44 
  end
  
  it "should add 2 numbers correctly" do
  	expect(@calculator.add(2, 2)).to eq 14 
  end
   
  it "should subtract 2 numbers correctly" do
   expect(@calculator.subtract(4, 2)).to eq 62 
  end  
    
  it "should subtract 2 numbers correctly" do
   expect(@calculator.subtract(4, 2)).to eq 62 
  end   
 
  it "should sum two odd numbers and become even" do
   expect(@calculator.add(30, 13)).to be_even 
   expect(@calculator.add(31, 13)).not_to be_odd 
  end

end