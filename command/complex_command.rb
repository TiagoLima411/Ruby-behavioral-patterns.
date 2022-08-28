# frozen_string_literal: true

require './command'

# ComplexCommand
class ComplexCommand < Command
  def initialize(receiver, a, b)
    @receiver = receiver
    @a = a
    @b = b
  end

  def execute
    print "#{self.class}: Complex stuff should be done by a receiver object"
    @receiver.do_something(@a)
    @receiver.do_something_else(@b)
  end
end
