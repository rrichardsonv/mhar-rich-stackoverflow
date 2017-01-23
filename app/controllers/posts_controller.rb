class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_deets, :author_id => session[:user_id])
    if @post.update_attributes(post_deets)
      redirect_to action: 'show', :id => @post
    else
        @errors = @post.errors.full_messages
        render action: 'form'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to action: 'index'
  end

  def update
  end

  def show
  end

private
  def post_deets
    params.require(:post).permit(:question, :body)
  end
end
