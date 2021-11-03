class SessionsController < ApplicationController
  skip_before_action :authenticate_user

  def create
    # require "pry"; binding.pry
    # auth_hash = request.env['omniauth.auth']
    # name = auth_hash['info']['name'],
    # email = auth_hash['info']['email'],
    # google_id = auth_hash['uid'],
    # token = auth_hash['credentials']['token']

    # user = User.find_or_create_by(email: email)
    # user.update(google_id: google_id, token: token)

    user = User.find_or_create_by(email: user_params[:email])
    session[:user_id] = user.id

    redirect_to dashboard_path
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
        name: auth_hash['info']['name'],
        email: auth_hash['info']['email'],
        google_id: auth_hash['uid'],
        token: auth_hash['credentials']['token']
      }
  end
end
