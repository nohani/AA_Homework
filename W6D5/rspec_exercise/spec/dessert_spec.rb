require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! 
Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:cake) { Dessert.new("cake", 100, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(cake).to be_a(Dessert)
    end

    it "sets a quantity" do
      @quantity = 10
      expect(@quantity).to eq.(10)
    end

    it "starts ingredients as an empty array" do
     
      expect(cake.ingredients).to(eq([]))
      
    end

    it "raises an argument error when given a non-integer quantity" do
      expect do 
        (quantity).to raise_error() if !quantity.is_a?(Integer)
      end
      
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("strawberries")
      expect(cake.ingredients).to include("strawberries")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(mix!).to(eq(cake.ingredients.shuffle!))
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
          cake.eat(10)
          expect(cake.quantity).to eq(90)
    end
    end


    it "raises an error if the amount is greater than the quantity" do
        expect(cake.eat(110)).to raise_error("not enough left!")
  end
end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
  end
end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
  end
end
