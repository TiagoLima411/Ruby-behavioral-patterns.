# frozen_string_literal: true

require './strategy'

# ConcreteStrategyB
class ConcreteStrategyB < Strategy
  # @param [Array] data
  #
  # @return [Array]
  def do_algorithm(data)
    data.sort.reverse
  end
end
