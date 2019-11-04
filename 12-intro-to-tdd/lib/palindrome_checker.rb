class PalindromeChecker
  def self.checks_for_palindromes(string)
    
    
    # Never Odd Or Even
     # 1. make everything lower case
     downcased_string = string.downcase
     # 2. get rid of the spaces
     no_spaces = downcased_string.gsub(' ', '')
     # 3. reverse and stuff 
    no_spaces.reverse == no_spaces
  end
end