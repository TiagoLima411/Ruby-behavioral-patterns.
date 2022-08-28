# frozen_string_literal: true

# Mediator
class Mediator
  def notify(_sender, _event)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
