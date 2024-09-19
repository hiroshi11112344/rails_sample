class PostsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @posts = Post.all
  end

  def show
    
    @post = Post.find_by(id: params[:id])
    @user = @post.user
    
    
  end

  def new
  end
  def create 
    @post = Post.new(content: params[:content], user_id: @current_user.id)
    @post.save
    redirect_to("/posts/index")
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end
  

  def update #編集画面で編集された内容を指定したURLに反映　（routes）
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.save
    redirect_to("/posts/index")
  end
  
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end
end

