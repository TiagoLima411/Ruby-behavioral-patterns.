# frozen_string_literal: true

require './command'

# SimpleCommand
class SimpleCommand < Command
  def initialize(payload)
    @payload = payload
  end

  def execute
    print "#{self.class}: See, I can do Simple things like printing (#{@payload})\n"
  end
end
