# frozen_string_literal: true

require './monkey_handler'
require './squirrel_handler'
require './dog_handler'

# Client
class Client
  def self.call_chain(handler)
    %w[Banana Nut MeatBall].each do |food|
      puts "\nClient: Who wants a #{food}?"

      result = handler.handle(food)
      if result
        print " #{result}"
      else
        print " #{food} was left untouched."
      end
    end
  end

  def self.trigger_chain
    monkey = ::MonkeyHandler.new
    squirrel = SquirrelHandler.new
    dog = DogHandler.new

    monkey.next_handler(squirrel).next_handler(dog)
    puts 'Chain: Monkey > Squirrel > Dog'

    call_chain(monkey)
  end

  trigger_chain
end
