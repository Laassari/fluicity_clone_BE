class AuthenticateController < ApplicationController
  def login
    @user = User.find_by(email: user_params[:email]).try(:authenticate, user_params[:password])   
    if @user
      render json: @user
    else
      render json: 'error', status: :forbidden
    end
  end

  def sign_up
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:person).permit(:first_name, :last_name, :email, :password)
    end
end
