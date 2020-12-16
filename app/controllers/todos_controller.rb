class TodosController < ApplicationController
  before_action :set_project
  before_action :set_todo, only: :update

  def create
    @project.todos.create(todo_params)
  end

  def update
    @todo.update(isCompleted: params[:isCompleted])
  end

  private

  def set_project
    @project = find_project || create_project
  end

  def find_project
    Project.find(params[:project_id])
  end

  def create_project
    Project.create(title: params[:project.title])
  end

  def set_todo
    @todo = @project.todos.find(params[:id])
  end

  def todo_params
    params.permit(:text, :isCompleted, :project_id)
  end
end
