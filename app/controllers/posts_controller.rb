class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params.require(:post).permit(:start_at, :end_at, :is_all_day, :title, :content))
    if @post.save
      redirect_to posts_path
    else
      render "new"
    end
  end
  
  def show
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
end
