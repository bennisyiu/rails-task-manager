class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)

    ## when finish, redirect_to
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(edit_task_params)
    redirect_to tasks_path

    ## when finish, redirect_to
  end

  def destroy
    @task = Task.find(params[:id])
    @task.delete
    redirect_to tasks_path

    ## when finish, redirect_to
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def edit_task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
