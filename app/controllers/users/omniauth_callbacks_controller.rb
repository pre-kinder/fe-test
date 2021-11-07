# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :authenticate_user!

  def google_oauth2
     @user = User.from_omniauth(request.env['omniauth.auth'])

     if @user.persisted?
       flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
       if @user.role == 'teacher'
         sign_in @user, event: :authentication
         redirect_to teachers_dashboard_path
       elsif @user.role == 'parent'
         sign_in @user, event: :authentication
         redirect_to parents_path
       else
         sign_in @user, event: :authentication
         redirect_to new_user_registration_path
       end
     else
       session['devise.google_data'] = request.env['omniauth.auth'].except(:extra)
       redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
     end
  end

  # More info at:
  # https://github.com/heartcombo/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  def failure
    super
  end

  protected

  # The path used when OmniAuth fails
  def after_omniauth_failure_path_for(scope)
    super(scope)
  end
end
