module QuotesHelper

	def quotes_title(source, category)
		case
		when source then "Quotes by #{source}"
		when category then "Quotes related to #{category}"
		else "All Quotes"
		end
	end

end
