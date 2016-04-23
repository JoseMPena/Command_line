class TodoList
  attr_reader :tasks
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def delete_task(id)
    @tasks.delete_if { |task| task.id == id }
  end

  def find_task_by_id(id)
    @tasks.bsearch { |task| task.id == id }
  end
end
