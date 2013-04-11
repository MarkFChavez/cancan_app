class PostsController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  def index
  	@posts = Post.all
  end

  def show
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = current_user.posts.build(params[:post])

  	if @post.save
  		redirect_to root_path, notice: "Post created"
  	else
  		render :new
  	end
  end

end
