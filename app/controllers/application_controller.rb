class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  before_action :set_access

  def set_access
	response.headers["Access-Control-Allow-Origin"] = "*"
  end
end
