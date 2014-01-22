class DashboardController < ApplicationController

  before_filter :require_logged_user

  protected

  def require_logged_user
    redirect_to root_path unless current_user || current_user_session
  end
end
