class RegisterController < ActionController::Base
  def create
    username = params[:username]
    password = params[:password]
    name = params[:name]
    email = params[:email]

    if User.find_by_username(username).nil? && User.find_by_email(email).nil?
      User.create(username: username, password: password, email: email, name: name)
      render json: { success: true }
    else
      render json: { success: false }
    end
  end
end
