class PostsController < ApplicationController

    before_action :find_post, only: [:show, :edit, :update]

  def new
      @post = Post.new
      # @post.blogger.build(name: "Temp")
  end

  def create

      @post = Post.new(post_params)
      @post.save

      if @post.save
          redirect_to @post
      else
          render "new"
      end

  end

  def show

  end

  def edit
  end

  def update
      @post.update(post_params)
      if @post.save
          redirect_to @post
      else
          render "edit"
      end

  end

  def upvote
      @post = Post.find(params[:post_id])
      @post.upvote
      redirect_to @post
  end


  private

  def find_post
      @post = Post.find(params[:id])
  end


  def post_params
      params.require(:post).permit(
          :title, :content, :blogger_id, :destination_id, :likes
      )
  end
end
