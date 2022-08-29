# frozen_string_literal: true

# ConcreteObserverB
class ConcreteObserverB < Observer
  def update(subject)
    return unless subject.state.zero? || subject.state >= 2

    puts 'ConcreteObserverB:update: Reacted to the event'
  end
end
