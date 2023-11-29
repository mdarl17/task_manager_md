class TasksController < ApplicationController 
  def index 
    @tasks = Task.all
  end

  def show 
    @task = Task.find(params[:id])
  end

  def new 

  end

  def create 
    new_task = Task.new({title: params[:title], description: params[:description]})
    if new_task.save
      flash[:alert] = "Task successfully added!"
      redirect_to "/tasks"
    else 
      flash[:alert] = "Uh-oh. Something went wrong and the task was not added. Please try again."
      redirect_to "/tasks/new"
    end
  end
end