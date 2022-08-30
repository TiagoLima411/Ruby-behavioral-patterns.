# frozen_string_literal: true

# The Context defines the interface of interest to clients.
class Context
  # The Context maintains a reference to one of the Strategy objects. The
  # Context does not know the concrete class of a strategy. It should work with
  # all strategies via the Strategy interface.
  attr_writer :strategy

  def initialize(strategy)
    @strategy = strategy
  end

  # Usually, the Context allows replacing a Strategy object at runtime.
  def strategy=(strategy)
    @strategy = strategy
  end

  # The Context delegates some work to the Strategy object instead of
  # implementing multiple versions of the algorithm on its own.
  def do_some_business_logic
    puts "#{self.class}: Sorting data using the strategy (not sure how it\'ll do it)"
    result = @strategy.do_algorithm(%w[a b c d e])
    print result.join(',')
  end
end
