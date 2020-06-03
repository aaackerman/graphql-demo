class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end


  def create
    render json: User.create(permitted_params)
  end

  def update
    render json: User.update(:permitted_params)
  end


  def destroy
  end

  private

  def permitted_params
    params.permit(:first_name, :last_name, :email)
  end
end
