require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "a book with all attribute should be valid" do
  book = books(:steppenwolf)
  #book = Book.new(title: 'Steppenwolff',
		#authors: 'Hermaan Hesse',
		#description: 'A good book')
   assert book.valid?
  end
 

  test "a book without a title shoiuld not be valid" do
  book = books(:steppenwolf)
  book.title = ""
  assert book.invalid?
  end


  test "a book without an author should not be valid"  do
    book = books(:steppenwolf)
    book.authors = ""
     assert book.invalid?

  end

  test "no 2 books may have the same title" do
    book = books(:steppenwolf)
     other_book = book.dup

  assert other_book.invalid?
end
  # test "the truth" do
  #   assert true
  # end
end
