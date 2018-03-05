require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
  	before do 
  		@category = Category.find_or_create_by! name: 'Apparel'
  	
  	end

  	it 'should work if it receives all five required validators' do
  		@product = Product.new({name:  'Hips', description: "described", quantity: 4, price: 34.49, category: @category})
  		@product.save!
  	end

  	it 'should NOT work if it is missing a name' do
  		@product = Product.new({description: "described", quantity: 4, price: 34.49, category: @category})
  		expect {  @product.save! }.to raise_error(ActiveRecord::RecordInvalid)
  	end

  	it 'should NOT work if it is missing a price' do
  		@product = Product.new({name:  'Hips', description: "described", quantity: 4, category: @category})
  		expect {  @product.save! }.to raise_error(ActiveRecord::RecordInvalid)
  	end

  	it 'should NOT work if it is missing a quantity' do
  		@product = Product.new({name:  'Hips', description: "described", price: 34.49, category: @category})
  		expect {  @product.save! }.to raise_error(ActiveRecord::RecordInvalid)
  	end

  	it 'should NOT work if it is missing a category' do
  		@product = Product.new({name:  'Hips', description: "described", quantity: 4, price: 34.49})
  		expect {  @product.save! }.to raise_error(ActiveRecord::RecordInvalid)
  	end
  end
end
