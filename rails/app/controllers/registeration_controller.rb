class RegisterationController < ApplicationController
  def register
    user = User.create_or_find_by(name: params[:name], pwd: params[:pwd])

    if user
    render json: {
      message: user.token
    }, status: :ok
    else
    render json: {
       messages: "Signed In Failed - Unauthorized",
    }, status: :unauthorized
    end
  end
end
