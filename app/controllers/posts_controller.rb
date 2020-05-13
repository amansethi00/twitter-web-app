class PostsController < ApplicationController
  before_action:authenticate_user
  before_action:ensure_correct_user,{only:[:edit,:update,:destroy]}
  def index
    @posts = Post.all.order(created_at: :desc)

  end
  def show
    @post = Post.find_by(id:params[:id])
    @user= User.find_by(id:@post.user_id)
  end
  def new
      @post=Post.new
  end
  def create
    @post=Post.new(content:params[:contents],
    user_id:@current_user.id
    )
    if @post.save
      flash[:notice]="Post successfully created"
      redirect_to("/posts/index")
    else
      render("/posts/new")
    end
  end
  def edit
    @post=Post.find_by(id:params[:id])
  end

  def update
    @post=Post.find_by(id:params[:id])
    @post.content=params[:content]
    if @post.save
      flash[:notice]="Post Successfully edited"
      redirect_to("/posts/index")
    else
      
      render("/posts/edit")
    end
  end
  def destroy
    @post=Post.find_by(id:params[:id])
    @post.destroy
    flash[:notice]="Post succesfully deleted!"
    redirect_to("/posts/index")
  end
  def ensure_correct_user
    @post= Post.find_by(id: params[:id])
    if @post.user_id != @current_user.id
      flash[:notice]="Unauthorized access"
      redirect_to("/posts/index")
    end
  end
end
