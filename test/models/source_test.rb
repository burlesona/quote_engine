require "minitest_helper"

describe Source do
	before do
		@source = Fabricate :source
	end

	describe "validations" do
		it "must be valid when fabricated" do
			@source.valid?.must_equal true
		end

		it "must be invalid with blank official name" do
			@source.official_name = ""
			@source.valid?.must_equal false
		end
	end

	describe "formatting" do
		it "must concatenate fields to give full name" do
			source = Source.new :official_name => "Johnson",
													:middle_name => "A.",
													:first_name => "Peter",
													:title => "Senator"
			source.full_name.must_equal "Senator Peter A. Johnson"
		end
	end
end
