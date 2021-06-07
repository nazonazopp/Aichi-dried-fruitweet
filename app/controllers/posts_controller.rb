class PostsController < ApplicationController

  before_action :move_to_index, except: [:index]

  def index
    @posts = Post.order("created_at DESC").page(params[:page]).per(5)
  end
  def new
    @post = Post.new
  end
  def create
    Post.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:text, :title, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
