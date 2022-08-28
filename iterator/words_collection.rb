# frozen_string_literal: true

require './alphabetical_order_iterator'

# WordsCollection
class WordsCollection
  attr_accessor :collection
  private :collection

  def initialize(collection = [])
    @collection = collection
  end

  def iterator
    AlphabeticalOrderIterator.new(@collection)
  end

  def reverse_iterator
    AlphabeticalOrderIterator.new(@collection, true)
  end

  def add_item(item)
    @collection << item
  end
end
