class Todo
  def initialize(text)
    @text = text
  end
  
  def text
    "#{@text}"
  end
end
  
class TodoList
  def initialize
    @list = []
  end
  
  def add(todo)
    @list << todo
  end
  
  def print
    @list.each do |item|
      puts "* #{item.text}"
    end
  end
end

todo2 = Todo.new("get bread")
todo_list = TodoList.new
todo_list.add(todo)
todo_list.print