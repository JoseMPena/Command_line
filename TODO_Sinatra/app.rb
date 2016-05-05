require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/task.rb')
require_relative('lib/todo_list.rb')
require "pry"

todo_list = TodoList.new("Jose")
todo_list.load_tasks
tasks = todo_list.tasks

get "/" do
  @user = todo_list.user
  @tasks = todo_list.tasks
  erb :task_view, layout: :layout
end

get "/new_task" do
  erb :new_task, layout: :layout
end

post "/create_task" do
  completed = (params[:completed] == "yes") ? true : false
  todo_list.add_task(Task.new(params[:content], completed))
  redirect to("/")
end

post "/complete/task/:p1" do
  id = params[:p1].to_i
  # binding.pry
  complete_task = tasks.find { |task| task.id == id }
  complete_task.toggle_complete!
  todo_list.save_tasks
  redirect to "/"
end

post "/delete/task/:p1" do
  id = params[:p1].to_i
  to_delete = tasks.find { |task| task.id == id }
  todo_list.delete_task(to_delete.id)
  redirect to "/"
end
