class TodoList
  attr_reader :tasks
  def initialize(user)
    @tasks = []
    @user = user
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

  def sort_by_created(mode = "ASC")
    if mode == "ASC"
      @tasks.sort { |task1, task2| task1.created_at <=> task2.created_at }
    else
      @tasks.sort { |task1, task2| task2.created_at <=> task1.created_at }
    end
  end
end
