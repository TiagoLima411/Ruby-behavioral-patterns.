# frozen_string_literal: true

require './subject'

# ConcreteSubject
class ConcreteSubject < Subject
  attr_accessor :state

  def initialize
    @observers = []
  end

  def attach(observer)
    puts "#{self.class}:attach: Attached an observer."
    @observers << observer
  end

  def detach(observer)
    puts "#{self.class}:detach: Detached an observer."
    @observers.delete(observer)
  end

  # Trigger an update in each subscriber.
  def notify
    puts "#{self.class}:notify: Notifying observers..."
    @observers.each { |observer| observer.update(self) }
  end

  def some_business_logic
    puts "\n#{self.class}:business_logic: I'm doing something important."
    @state = rand(0..10)

    puts "#{self.class}:business_logic: My state has just changed to: #{@state}"
    notify
  end
end
