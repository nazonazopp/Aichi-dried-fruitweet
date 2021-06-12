class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.order("created_at DESC").page(params[:page]).per(5)
  end
  def new
    @post = Post.new
  end
  def create
    Post.create(post_params)
  end
  def destroy
    post = Post.find(params[:id])
    post.remove_image!
    post.save
    post.destroy
  end

  def edit
    @post = Post.find(params[:id])
    if (@post.image.blank?) then
     # 画像がないときは何もしない。
    else
     # 画像があるときは、これで大丈夫。
     @post.image.cache!
    end
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end


  private
  def post_params
    params.require(:post).permit(:text, :title, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id]) 
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
