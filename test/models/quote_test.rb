require 'minitest_helper'

describe Quote do
	before do
		@quote = Fabricate :quote
	end

	describe "validations" do
		it "must be valid when fabricated" do
			@quote.valid?.must_equal true
		end

		it "must be invalid without content" do
			@quote.content= ""
			@quote.valid?.must_equal false
			@quote.content= nil
			@quote.valid?.must_equal false
		end
	end

end
