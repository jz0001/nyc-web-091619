require_relative '../lib/palindrome_checker'

RSpec.describe PalindromeChecker do 
  describe '.checks_for_palindromes' do
    it 'returns true when given a palindrome' do
      result = PalindromeChecker.checks_for_palindromes("poop")
      expect(result).to be true
    end

    it 'returns false when not given a palidrome' do
      result = PalindromeChecker.checks_for_palindromes("poopy")
      expect(result).to be false
    end
    
    it 'returns true when given a multicase paldrindromic phrase with spaces' do
      phrase = 'Never Odd Or Even'
      result = PalindromeChecker.checks_for_palindromes(phrase)
      expect(result).to be true
    end
    
    xit 'accepts a single argument'
    xit 'raise an error when given something other than a string'
  end
end