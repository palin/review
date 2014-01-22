class UserSessionController < ApplicationController

  expose(:user) { User.find_or_create_from_auth_hash(auth_hash) }
  expose(:user_session) { UserSession.new(user) }

  def create
    if user_session.save
      redirect_to profile_path(current_user)
    else
      render text: user_session.errors
    end
  end

  def destroy
    reset_session
    current_user_session.destroy if current_user_session
    redirect_to root_url
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
