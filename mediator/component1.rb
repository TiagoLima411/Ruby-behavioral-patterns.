# frozen_string_literal: true

require './base_component'

# Component1
class Component1 < BaseComponent
  def do_a
    puts 'Component 1 does A.'
    @mediator.notify(self, 'A')
  end

  def do_b
    puts 'Component 1 does B.'
    @mediator.notify(self, 'B')
  end
end
