class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params.require(:post).permit(:title, :start_at, :end_at, :is_all_day, :content))
    if @post.save
      flash[:success] = "スケジュール作成に成功しました"
      redirect_to posts_path
    else
      flash[:failure] = "スケジュール作成に失敗しました"
      render "new"
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :start_at, :end_at, :is_all_day, :content))
      flash[:success] = "編集に成功しました"
      redirect_to posts_path
    else
      flash[:failure] = "編集に失敗しました"
      render "edit"
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:success] = "スケジュールを削除しました"
    redirect_to :posts
  end
end
