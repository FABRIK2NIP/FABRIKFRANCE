class ApplicationController < ActionController::Base

  helper_method :current_user
  
  def current_user

  end
    
    
  def require_user

   end

   def current_print

   end


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  attr_accessor :volume
  attr_accessor :name
  protect_from_forgery with: :exception
end
