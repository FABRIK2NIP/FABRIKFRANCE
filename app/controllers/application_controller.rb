class ApplicationController < ActionController::Base

  helper_method :current_user
  
  def current_user
    @current_user ||=
      User.find(session[:user_id]) if
    session[:user_id]
  end
    
    
  def require_user
     redirect_to '/login' unless
     current_user
   end

   def current_print
     @current_print ||=
       Print.find(params[:name]) if 
       params[:name]
   end


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  attr_accessor :volume
  attr_accessor :name
  protect_from_forgery with: :exception
end
