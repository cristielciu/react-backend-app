class LoginController < ActionController::Base
  def index
    render json: User.find_by(username: params[:username], password: params[:password])
  end
end
