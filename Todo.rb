class Todo
  attr_accessor :description

  def initialize(description)
    @description = description
  end

  def print
    puts @description
  end
end