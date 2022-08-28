# frozen_string_literal: true

require './component1'
require './component2'
require './concrete_mediator'

# Client
class Client
  c1 = Component1.new
  c2 = Component2.new
  ConcreteMediator.new(c1, c2)

  puts 'Client triggers operation A.'
  c1.do_a

  puts "\n"

  puts 'Client triggers operation D.'
  c2.do_d
end
