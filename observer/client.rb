# frozen_string_literal: true

require './concrete_subject'
require './concrete_observer_a'
require './concrete_observer_b'

# Client
class Client
  subject = ConcreteSubject.new

  observer_a = ConcreteObserverA.new
  subject.attach(observer_a)

  observer_b = ConcreteObserverB.new
  subject.attach(observer_b)

  subject.some_business_logic
  subject.some_business_logic

  subject.detach(observer_a)

  subject.some_business_logic
end
