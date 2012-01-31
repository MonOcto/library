class IsbnValidator < ActiveModel::Validator

VALID_CHARACTER = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'x']

	#attr_reader :isbn

	

	
	def initialize(options)
         super(options)
		
		# if  isbn.nil?
		#@isbn = ""

		#else
		#@isbn = cleanup_isbn(isbn)
	#end
			
	end

  def validate(record)

   if record.is_a?(String)
     return valid?(record)
    else
      unless valid?(record.isbn)
       record.errors[:isbn] << "is not a valid ISBN"
       end
     
    end
  end




	def valid?(isbn)
           isbn = cleanup_isbn(isbn)
	  #if @isbn.size() == 10 || @isbn == 13
             if isbn.size() == 10 || @isbn == 13
            #@isbn.chars.all?{|c| valid_character?(c) }
             isbn.chars.all?{|c| valid_character?(c) }
	  else 
	    return false 
	  end
	end

private

	def valid_character?(c)
		return VALID_CHARACTER.include?(c)
		#return c == '1' || c == '2' || c == '3' || 
		#c == '4' || c == '5' || c == '6' || c == '7' || 
		#c == '8' || c == '9' || c == '0' || c == 'x'
		#true
	end



	

	def cleanup_isbn(isbn)

		return isbn.downcase.gsub("-", "").gsub(" ", "")
	end


	


end
