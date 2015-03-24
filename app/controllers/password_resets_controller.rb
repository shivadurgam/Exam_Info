class PasswordResetsController < ApplicationController
  def new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
  		redirect_to user_path, :flash => {:success => "User was successfully updated."}
  	end
  end


  private

  def user_params
  	params.require(:user).permit(:password, :password_confirmation)
  end
end
