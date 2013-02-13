class HomeController < ApplicationController
  layout "admin"

  before_filter :auth_required

  def index

  end
end
