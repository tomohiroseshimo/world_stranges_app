class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def witness
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: '投稿が成功しました'
    else
      render 'new', notice: '投稿できませんでした'
    end
  end


  def edit
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :area, :level)
  end

end
