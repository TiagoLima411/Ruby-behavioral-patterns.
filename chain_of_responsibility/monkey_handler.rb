# frozen_string_literal: true

require './handlers/abstract_handler'
# monkey handler
class MonkeyHandler < AbstractHandler
  def handle(request)
    if request == 'Banana'
      "Monkey: I'll eat the #{request}"
    else
      super(request)
    end
  end
end
