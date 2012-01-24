class IsbnValidator

VALID_CHARACTER = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'x']

	attr_reader :isbn

	

	
	def initialize(isbn)
		
		 if  isbn.nil?
		@isbn = ""

		else
		@isbn = cleanup_isbn(isbn)
	end
			
	end



	def valid?
		if @isbn.size() == 10 || @isbn == 13
			return true
		else 
			return false 
	end

	end



	def self.valid_character?(c)
		return c == '1' || c == '2' || c == '3' || 
		c == '4' || c == '5' || c == '6' || c == '7' || 
		c == '8' || c == '9' || c == '0' || c == 'x'
		true
	end



	private

	def cleanup_isbn(isbn)

		return isbn.downcase.gsub("-", "").gsub(" ", "")
	end


	


end
