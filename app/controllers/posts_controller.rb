class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def witness
  end
end
