# frozen_string_literal: true

require './handlers/abstract_handler'
# monkey handler
class DogHandler < AbstractHandler
  def handle(request)
    if request == 'MeatBall'
      "Dog: I'll eat the #{request}"
    else
      super(request)
    end
  end
end
