class AccessController < ApplicationController
  def menu
  end
  def login
  end
  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = AdminUser.where(:username => params[:username]).first
      if found_user
        authorize_user = found_user.authenticate(params[:password])
      end
    end
    
    if authorize_user 
      sessions[:user_id] = authorize_user.id
      redirect_to(admin_path)
    else
      render('login')
    end
  end 

  def logout
    sessions[:user_id] = nil
    redirect_to(access_login_path)
  end
end
