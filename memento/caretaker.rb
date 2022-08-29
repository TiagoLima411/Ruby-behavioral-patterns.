# frozen_string_literal: true

require './memento'

# Caretaker
class Caretaker
  def initialize(originator)
    @mementos = []
    @originator = originator
  end

  def backup
    puts "\n#{self.class}:backup: Saving Originator state..."
    @mementos << @originator.save
  end

  def undo
    return if @mementos.empty?

    memento = @mementos.pop
    puts "#{self.class}:undo: Restoring state to: #{memento.name}"

    begin
      @originator.restore(memento)
    rescue StandardError
      undo
    end
  end

  def show_history
    puts "#{self.class}:show_history: Here\'s the list of mementos:"

    @mementos.each { |memento| puts memento.name}
  end
end
