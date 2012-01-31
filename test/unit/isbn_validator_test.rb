require "test_helper"
 
# 31.1.2012
class IsbnValidatorTest < ActiveSupport::TestCase
  
 test "an isbn with dashes is a valid isbn" do
   v = IsbnValidator.new({})
   assert v.validate("987-65345-8-9")
 end


test "an isbn with whitespace is valid" do
  v =IsbnValidator.new("987 65345 8 9")
   assert v.valid?
 end

test "an empty string is not a valid ISBN" do
  v =IsbnValidator.new("")
   assert !v.valid?
 end


test "a string with letters other than x is not a valid isbn" do
  v =IsbnValidator.new("987-65345-8-j")
   assert !v.valid?
 end


test "a string with 14 character is not a valid ISBN" do
  v =IsbnValidator.new("12345678912345")
   assert !v.valid?
 end


  #test "true is true" do
    #assert true
  #end
  
end
