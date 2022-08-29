# frozen_string_literal: true

require './memento'

# ConcreteMemento
class ConcreteMemento < Memento
  attr_reader :state, :date

  def initialize(state)
    @state = state
    @date = Time.now.strftime('%F %T')
  end

  def name
    "#{@date} / (#{@state[0, 15]}...)"
  end
end
