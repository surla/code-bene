class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_parems)
    if user.save
      sessions[:user_id] = user.id
      redirect to 'user_new_path'
    else
      render '/signup'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
