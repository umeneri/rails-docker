class RegistrationController < ApplicationController
  def register
    user = User.find_by(name: params[:name])

    if user
      # always registered
      if params[:pwd] == user.pwd
        render json: {
          message: user.token
        }, status: :ok
      else
        render json: {
          messages: 'user name or password is incorrect'
        }, status: :unauthorized
      end
    else
      # new user
      user = User.create(name: params[:name], pwd: params[:pwd])

      render json: {
        message: user.token
      }, status: :ok
    end
  end
end
