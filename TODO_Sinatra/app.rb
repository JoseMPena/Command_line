require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/task.rb')
require_relative('lib/todo_list.rb')
require "pry"

todo_list = TodoList.new("Jose")
todo_list.load_tasks

get "/" do
  @user = todo_list.user
  @tasks = todo_list.tasks
  erb :task_view
end

get "/new_task" do
  erb :new_task
end

post "/create_task" do
  completed = (params[:completed] == "yes") ? true : false
  todo_list.add_task(Task.new(params[:content], completed))
  redirect to("/")
end
