# frozen_string_literal: true

require './observer'

# ConcreteObserverA
class ConcreteObserverA < Observer
  def update(subject)
    puts 'ConcreteObserverA:update: Reacted to the event' if subject.state < 3
  end
end
