class PostsController < ApplicationController
  def index
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  end


  def create
    render json: Post.create(permitted_params)
  end

  def update
    render json: Post.update(:permitted_params)
  end


  def destroy
  end

  def permitted_params
    params.permit(:user_id, :title, :body)
  end
end
