require 'digest/sha2'

class AuthController < ApplicationController
  layout "application"

  def login

  end

  def do_login
    username = params["username"]
    password = params["password"]

    if valid_user(username, password)
      session["admin"] = "admin"
      redirect_to :controller => "home", :action => "index"
    else
      flash[:info] = "Login failed, please try again."
      redirect_to :action => "login"
    end
  end

  def valid_user(username, password)
    correct_username = "admin"
    correct_password = "ztahjk6w"
    username == correct_username && password == correct_password
  end

  def logout
    session["admin"] = nil

    flash[:info] = "you have logged out."
    redirect_to :action => "login"
  end
end
