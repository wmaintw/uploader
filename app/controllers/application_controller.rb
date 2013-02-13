class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def auth_required
    unless user_login?
      flash[:info] = "Please login first."
      redirect_to "/login"
    end
  end

  def user_login?
    session["admin"] == "admin"
  end
end
