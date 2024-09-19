class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:index, :show, :edit, :update]}

  def index
    @users = Uaer.all
    
  end

  def show
    
    @user = Uaer.find_by(id: params[:id])
    

  end
  def edit
    @user = Uaer.find_by(id: params[:id])
  end
  def update
    @user = Uaer.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.save
    redirect_to("/users/#{@user.id}")
    
  end

  def new
  end


  def create
    @user = Uaer.new(name: params[:name], email: params[:email], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      redirect_to("/users/#{@user.id}")
    end
  end

  


  def login_form
  end

  def login
    @user = Uaer.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to("/posts/index")
    else
      render("users/login_form")
    end 

  end

  def logout
    session[:user_id] = nil
    redirect_to("/login")
  end

  def destroy
    @user = Uaer.find_by(id: params[:id])
    @user.destroy
    redirect_to("/users/index")
  end
  
end
