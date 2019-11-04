require 'rest-client'
require 'pry'
require 'JSON'

puts 'Welcome to our library thing'
puts 'Please enter a search term:'
search_term = gets.chomp
concatenated_search_term = search_term.split.join('+')


url = "https://www.googleapis.com/books/v1/volumes?q=#{concatenated_search_term}"

response = RestClient.get(url)

response_hash = JSON.parse(response)
books = response_hash["items"]

books.each.with_index(1) do |book, i|
  info = book["volumeInfo"]
  title = info["title"]
  authors = info["authors"]
  date = info["publishedDate"]

  # Book.create(title: title, authors: authors, date: date) # <- if we had an ActiverRecord class of Book

  puts "#{i}. Title: #{title} \n Author(s): #{authors} \n Date: #{date}"
  puts '*' * 25

end




# √parse the response - turn JSON string into hash
# √extract out the collection book-like hashes
# √iterate over collection of book-like hashes
# √print title, author, and publication to screen

binding.pry