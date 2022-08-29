# frozen_string_literal: true

require './concrete_memento'

# Origintor
class Originator
  attr_accessor :state
  private :state

  def initialize(state)
    @state = state
    puts "#{self.class}:initialize: My initial state is: #{@state}"
  end

  def do_something
    puts "#{self.class}:do_something: I\'m doing soemthing important."
    @state = generate_random_string(30)
    puts "#{self.class}:do_something: and my state has change to: #{@state}"
  end

  def save
    ConcreteMemento.new(@state)
  end

  def restore(memento)
    @state = memento.state
    puts "#{self.class}:restore: My state has change to: #{@state}"
  end

  private

  def generate_random_string(length = 10)
    ascii_letters = [*'a'..'z', *'A'..'Z']
    (0..length).map { ascii_letters.sample }.join
  end
end
