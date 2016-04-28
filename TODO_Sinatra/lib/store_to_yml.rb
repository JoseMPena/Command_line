require 'yaml/store'

module StoreToYML
  @todo_store = YAML::Store.new("./public/tasks.yml")
  def save
    @todo_store.transaction do
      @todo_store[@user] = @tasks
    end
  end

  def load_tasks
    @todo_store.transaction do
      @todo_store[@user] = @tasks
    end
  end
end
