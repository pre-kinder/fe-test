class ParentsController < ApplicationController
  def index
  end

  def new
    # @parent = User.find_or_create_by(id: user_params[:email]
    # binding.pry
    # <%= form_with url: parents_register_path(google_id: params[:uid], google_token: params[:token]), method: :post, local: true do |f| %>
  end

  def create
      UserFacade.create_user(params)
      found_user = UserFacade.get_user(params[:google_id])
      if found_user.present?
        session[:google_token] = params[:google_token]
        session[:google_id] = params[:google_id]
        redirect_to dashboard_index_path
      else
        flash[:error] = "Couldn't create your account, please try again."
        redirect_to root_path
      end
    end

  def show
  end

  private

  def parent_params
    params.require(:party).permit(:host_id, :duration, :start_time, :day, :movie)
  end
end
