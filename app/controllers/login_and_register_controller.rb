class LoginAndRegisterController < ActionController::Base
  def index
    username = params[:username]
    password = params[:password]
    name = params[:name]
    email = params[:email]

    if User.find_by_username(username).nil? && User.find_by_email(email).nil?
      u = User.create(username: username, password: password, email: email, name: name)
      render json: u
    else
      render json: { success: false }
    end
  end
end
