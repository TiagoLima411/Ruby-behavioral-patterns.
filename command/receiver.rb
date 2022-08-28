# frozen_string_literal: true

# Receiver
class Receiver
  def do_something(arg_a)
    print "\nReceiver: Working on (#{arg_a}.)"
  end

  def do_something_else(arg_b)
    print "\nReceiver: Also working on (#{arg_b}.)\n"
  end
end
