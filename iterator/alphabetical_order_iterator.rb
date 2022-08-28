# frozen_string_literal: true

# AlphabeticalOrderIterator
class AlphabeticalOrderIterator
  attr_accessor :reverse, :collection
  private :reverse, :collection

  def initialize(collection, reverse = false)
    @collection = collection
    @reverse = reverse
  end

  def each(&block)
    return @collection.reverse.each(&block) if reverse

    @collection.each(&block)
  end
end
