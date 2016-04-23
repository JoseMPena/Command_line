require "todo_list"
require "task"

describe TodoList do
  before :each do
    @task_dog = Task.new("Walk the dog")
    @task_milk = Task.new("Buy milk")
    @todo_list = TodoList.new
  end
  describe "#add_task" do
    context "given task to the add_task method" do
      it "adds the task to the todo_list" do
        @todo_list.add_task(@task_dog)
        expect(@todo_list.tasks[0]).to eql @task_dog
      end
    end
  end

  describe "#delete_task" do
    context "given a task ID to the delete_task method" do
      it "deletes the task from todo_list" do
        @todo_list.delete_task(@task_dog.id)
        expect(@todo_list.tasks.index(@task_dog)).to eql nil
      end
    end
  end

  describe "#find_task_by_id" do
    context "given a task ID to the find task method" do
      it "finds and return the right task" do
        @todo_list.add_task(@task_dog)
        @todo_list.add_task(@task_milk)
        expect(@todo_list.find_task_by_id(@task_milk.id)).to eql @task_milk
      end
    end

    context "given an invalid task ID to the find task method" do
      it "returns nil" do
        @todo_list.add_task(@task_dog)
        @todo_list.add_task(@task_milk)
        expect(@todo_list.find_task_by_id(500)).to eql nil
      end
    end
  end
end
