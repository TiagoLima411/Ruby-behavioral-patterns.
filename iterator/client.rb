# frozen_string_literal: true

require './words_collection'

# Client
class Client
  collection = WordsCollection.new
  collection.add_item('First')
  collection.add_item('Second')
  collection.add_item('Third')

  puts 'Straight traversal:'
  collection.iterator.each { |item| puts item }
  puts "\n"

  puts 'Reverse traversal:'
  collection.reverse_iterator.each { |item| puts item }
end
