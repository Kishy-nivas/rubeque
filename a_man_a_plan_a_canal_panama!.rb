#  A palindrome is a string that is written the same forward as it is in reverse. 
# Write a method to return the longest palindrome in a given string 

def longest_palindrome(word)
  palindromes = []
  (1..word.size).each do |word_length|
    word.split('').each_cons(word_length) do |letters|
      palindromes << letters.join if letters.join == letters.join.reverse
    end
  end
  palindromes.max_by(&:length)
end

# tests
assert_equal longest_palindrome("xyzzy"), "yzzy"
assert_equal longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd"), "dhfdkjfffhhfffjkdfhd"
assert_equal longest_palindrome("bartarcarracecarbartar"), "racecar"
assert_equal longest_palindrome("3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982"), "46264"
