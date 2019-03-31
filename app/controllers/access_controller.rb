class AccessController < ApplicationController
  before_action :confirm_logged_in, except: [:login, :attempt_login, :logout]

  def menu
    #displays text and links
    @useremail = session[:email]

  end

  def login
    #login form

  end

  def attempt_login
      if params[:email].present? && params[:password].present?
        found_user = User.where(:email => params[:email]).first
        if found_user
          authorized_user = found_user.authenticate(params[:password])
        end
      end

      if authorized_user
        session[:user_id] = authorized_user.id
        session[:email] = authorized_user.email
        flash[:notice] = "You are now logged in."
        redirect_to(admin_path)
      else
        flash.now[:notice] = "Invalid username/password combination."
        render('login')
      end
    end

    def attempt_setup
      if params[:email].present? && params[:password].present?
        found_user = User.where(:email => params[:email]).first
        if found_user
          flash[:notice] = "Email is already taken"
          render('login')
        else
          user = current_gymsite.users.create(params)
          session[:user_id] = params[:user_id]
          session[:email] = params[:email]
          authorized_user = user
          flash[:notice] = "You are now logged in."
          redirect_to(admin_path)
        end
      end
    end

    def logout
      session[:user_id] = nil
      flash[:notice] = 'Logged out'
      redirect_to(access_login_path)
    end

    private

    def confirm_logged_in
      unless session[:user_id]
        flash[:notice] = 'You have to login first'
        redirect_to access_login_path
        #redirect_to prevent the requested action to running
      end
    end
end
