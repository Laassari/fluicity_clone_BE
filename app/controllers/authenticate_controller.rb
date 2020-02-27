class AuthenticateController < ApplicationController
  def login
    @user = User.find_by(email: user_params[:email]).try(:authenticate, user_params[:password])   
    if @user
      render json: @user
    else
      render json: { errors: 'creds didn\'t match' }, status: :forbidden
    end
  end

  def sign_up
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def email_exists
    @user = User.find_by(email: params[:email])
    render json: {success: !!@user}
  end

  private
    def user_params
      params.require(:person).permit(:first_name, :last_name, :email, :password)
    end
end
