# frozen_string_literal: true

require './strategy'

# ConcreteStrategyA
class ConcreteStrategyA < Strategy
  # @param [Array] data
  #
  # @return [Array]
  def do_algorithm(data)
    data.sort
  end
end
