# frozen_string_literal: true

# Invoker
class Invoker
  def on_start(command)
    @on_start = command
  end

  def on_finish(command)
    @on_finish = command
  end

  def do_something_important
    print "#{self.class}: Does anybody want something done before I begin?\n"
    @on_start.execute if @on_start.is_a? Command

    print "#{self.class}: ...doing something really important...\n"

    print "#{self.class}: Does anybody want something done after I finish?\n"
    @on_finish.execute if @on_finish.is_a? Command
  end
end
