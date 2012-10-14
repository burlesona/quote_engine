require "minitest_helper"

describe Category do
	before do
		@category = Fabricate :category
	end

	describe "validations" do
		it "must be valid when fabricated" do
			@category.valid?.must_equal true
		end

		it "must have a unique name" do
			cat = Category.new :name => @category.name
			cat.valid?.must_equal false
		end

	end
end
