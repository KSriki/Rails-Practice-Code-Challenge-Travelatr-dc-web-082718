class PostsController < ApplicationController
  def new
  end

  def create
  end

  def show
      @post = Post.find(params[:id])
  end

  def edit

  end

  def update
  end

  def upvote
      @post = Post.find(params[:post_id])
      @post.upvote
      redirect_to @post
  end
end
