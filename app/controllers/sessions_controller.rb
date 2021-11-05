class SessionsController < ApplicationController
  # skip_before_action :authenticate_user

  def create
    @user = User.find_or_create_by(email: user_params[:email], first_name: user_params[:first_name], last_name: user_params[:last_name], google_id: user_params[:google_id])
    require "pry"; binding.pry
    # @user.save  #
    session[:user_id] = @user.id
    redirect_to register_main_path

    require "pry"; binding.pry
  end

  def destroy
    session[:user] = nil
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end

  def user_params
      {
        first_name: auth_hash['info']['first_name'],
        last_name: auth_hash['info']['last_name'],
        email: auth_hash['info']['email'],
        google_id: auth_hash['uid'],
        token: auth_hash['credentials']['token']
      }
  end
end
