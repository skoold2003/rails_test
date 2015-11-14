class SessionController < ApplicationController
  def new
  end
  
  def create    
    user = User.find_by(email: params[:session][:email].downcase)
    
    
    if user && user.authenticate(params[:session][:password])
      log_in user
      render 'logged_in'
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!      
      render 'new'
    end
  end
  
  def logged_in
    # current_user      
  end
  
  def destroy
    # render json: @current_user
    log_out current_user
    render 'new'
  end
end
