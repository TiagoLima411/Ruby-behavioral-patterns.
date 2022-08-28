# frozen_string_literal: true

# BaseComponent
class BaseComponent
  attr_accessor :mediator

  def initialize(mediator = nil)
    @mediator = mediator
  end
end
