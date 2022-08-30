# frozen_string_literal: true

require './context'
require './concrete_strategy_a'
require './concrete_strategy_b'

# Client
class Client
  context = Context.new(ConcreteStrategyA.new)
  puts "#{self.class}: Strategy is set to normal soting."
  context.do_some_business_logic
  puts "\n\n"

  puts "#{self.class}: Strategy is set to reverse sorting"
  context.strategy = ConcreteStrategyB.new
  context.do_some_business_logic
  puts "\n"
end
