class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params) # Not the final implementation!
    if @user.save
      flash[:success] = "User created"
      redirect_to @user
    else
      render 'new'
    end
  end


  def show
    @user = User.find_by(id: params[:id])
    unless @user
      redirect_to root_path
    end
  end

  private
  def user_params 
   params.require(:user).permit(:name, :email, :password,
                                :password_confirmation)
  end
end                                