#require_relative './store_to_yml.rb'
require "yaml/store"
require 'pry'

require "json"

class TodoList
  attr_reader :tasks
  def initialize(user = "Jose")
    @todo_store = YAML::Store.new("./public/tasks.yml")
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

  def save
    @todo_store.transaction do
      @todo_store["Andreas"] = [1,3,4]
      @todo_store[@user] = @tasks.map { |task| task.content }
      # puts @tasks
    end
  end

  def load_tasks
    @todo_store.transaction do
      @todo_store[@user] = @tasks
    end
  end
end
