# frozen_string_literal: true

require './handlers/abstract_handler'
# squirrel handler
class SquirrelHandler < AbstractHandler
  def handle(request)
    if request == 'Nut'
      "Squirrel: I'll eat the #{request}"
    else
      super(request)
    end
  end
end
