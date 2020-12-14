class TodosController < ApplicationController
  def create
    render json: { message: 'create' }
  end

  def update
    render json: { message: 'update' }
  end
end
