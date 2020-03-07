require_relative 'TodoList'
require_relative 'Todo'

COMMANDS = %w[add delete list clear commands].freeze
TODO_LIST = TodoList.new

def print_input_cursor
  print '> '
end

def add
  print 'Type the name of your task then press return: '
  description = gets.strip
  TODO_LIST.add(Todo.new(description))
  puts 'Task added.'
end

def delete
  print 'Type the number of the task to delete and press return: '
  index = Integer(gets.strip)
  if index.is_a? Integer
    description = TODO_LIST.get(index).description
    TODO_LIST.remove(index)
    puts "Task #{index} (#{description}) deleted."
  else
    puts "#{index} was not a valid integer. Please try your command again."
  end

end

def list
  TODO_LIST.print
end

def clear
  TODO_LIST.clear
end

def commands
  puts "Available commands: #{COMMANDS}"
end

puts 'Your to-do list. Please type a command.'
commands
print '> '

while input = gets.strip.downcase do
  if input == COMMANDS[0]
    add
  elsif input == COMMANDS[1]
    delete
  elsif input == COMMANDS[2]
    list
  elsif input == COMMANDS[3]
    clear
    puts 'To-do list cleared.'
  elsif input == COMMANDS[4]
    commands
  else
    puts "Unknown command #{input}."
  end
  print_input_cursor
end