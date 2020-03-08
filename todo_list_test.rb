require_relative 'TodoList'
require_relative 'Todo'
require 'test/unit'

class TodoListTest < Test::Unit::TestCase

  def test_initalizes_empty
    assert_equal(0, TodoList.new.size)
  end

  def test_adding_todos
    todo_list = TodoList.new
    todo_list.add(Todo.new('Do washing'))
    todo_list.add(Todo.new('Hang laundry'))
    assert_equal(2, todo_list.size)
  end

  def test_removing_todo
    todo_list = TodoList.new
    todo_list.add(Todo.new('Do washing'))
    todo_list.add(Todo.new('Hang laundry'))
    todo_list.remove(1)
    assert_equal(1, todo_list.size)
  end

  def test_clearing
    todo_list = TodoList.new
    todo_list.add(Todo.new('Do washing'))
    todo_list.add(Todo.new('Hang laundry'))
    todo_list.clear
    assert_equal(0, todo_list.size)
  end

  def test_to_s
    todo_list = TodoList.new
    todo_list.add(Todo.new('Do washing'))
    todo_list.add(Todo.new('Hang laundry'))
    # TODO: The below is ugly, need to sort out the newlines.
    assert_equal('0    Do washing
1    Hang laundry
',
                 todo_list.to_s)
  end
end