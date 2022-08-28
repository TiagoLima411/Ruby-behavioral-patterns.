# frozen_string_literal: true

require './invoker'
require './simple_command'
require './receiver'
require './complex_command'

# Client
class Client
  print "#{self.class}: Start events ...\n"
  invoker = Invoker.new
  invoker.on_start SimpleCommand.new('Say Hi!')
  receiver = Receiver.new
  invoker.on_finish ComplexCommand.new(receiver, 'Send email', 'Save report')
  invoker.do_something_important
end
