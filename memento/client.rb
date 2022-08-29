# frozen_string_literal: true

require './originator'
require './caretaker'

# Client
class Client
  originator = Originator.new('Super-duper-super-puper-super.')
  caretaker = Caretaker.new(originator)

  caretaker.backup
  originator.do_something

  caretaker.backup
  originator.do_something

  caretaker.backup
  originator.do_something

  puts "\n"
  caretaker.show_history

  puts "\nClient: Now, let's rollback!\n"
  caretaker.undo

  puts "\nClient: Once more!\n"
  caretaker.undo
end
