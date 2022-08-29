# frozen_string_literal: true

require './concrete_state_a'
require './context'

# Client
class Client
  context = Context.new(ConcreteStateA.new)
  context.request1
  context.request2
end
