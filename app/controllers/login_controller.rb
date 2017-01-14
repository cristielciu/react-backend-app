class LoginController < ActionController::Base
  def index
    user = User.find_by(username: params[:username], password: params[:password])
    if user
      render json: user.as_json.merge(success: true)
    else
      render json: { success: false }
    end
  end

  def create
    user = User.find_by(username: params[:username], password: params[:password])
    if user
      render json: user.as_json.merge(success: true)
    else
      render json: { success: false }
    end
  end
end
