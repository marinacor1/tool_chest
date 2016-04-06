class ApplicationController < ActionController::Base
  #base controller, kind of like a test_helper 
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
