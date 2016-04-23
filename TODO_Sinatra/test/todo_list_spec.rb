require "todo_list"
require "task"

describe TodoList do
  before :all do
    @task = Task.new("Walk the dog")
    @todo_list = TodoList.new
  end
  describe "#add_task" do
    context "given task to the add_task method" do
      it "adds the task to the todo_list" do
        @todo_list.add_task(@task)
        expect(@todo_list.tasks[0]).to eql @task
      end
    end
  end
end
