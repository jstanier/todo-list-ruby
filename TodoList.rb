class TodoList
  def initialize
    @list = []
  end

  def add(todo)
    @list.push(todo)
  end

  def get(index)
    @list.at(index)
  end

  def remove(index)
    @list.delete_at(index)
  end

  def clear
    @list = []
  end

  def print
    if @list.empty?
      puts 'To-do list is empty. Add something!'
    else
      @list.each_with_index do |todo, index|
        puts "#{index}    #{todo.description}"
      end
    end
  end
end