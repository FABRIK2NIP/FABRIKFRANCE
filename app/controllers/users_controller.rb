class UsersController < ApplicationController
  def new
    @user = User.new
  end


  def show
      @user = User.find(params[:id])
  end
  
  
  def edit
      @user = User.find(params[:id])
     
  end
  
  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
              redirect_to @user
            else
              render 'edit'
            end
  end


  def create 
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end



  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :address2, :town2, :zipcode2, :pays2)
  end




end
