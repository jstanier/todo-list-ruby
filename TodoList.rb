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

  def size
    @list.length
  end

  def to_s
    if @list.empty?
      'To-do list is empty. Add something!'
    else
      s = ''
      @list.each_with_index do |todo, index|
        s << "#{index}    #{todo.description}\n"
      end
    end
    s
  end
end