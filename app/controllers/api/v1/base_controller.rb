class Api::V1::BaseController < ApplicationController
  rescue_from StandardError,                with: :internal_server_error
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  # before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  private

  def authenticate_user!
    current_user || invalid_authentication
  end

  def invaild_authentication
    render json: { error: { message: "USER AUTHENTICATION FAILED!", code: nil } }, status: :unauthorized
  end

  # def current_user
  #   # p "-------------THIS IS CURRENT USER-------------"
  #   p "-------------USER HEADERS-------------"
  #   # p request.headers
  #   p "-------------USER HEADERS-------------", request.headers['X-USER-ID']
  #   user_id = request.headers['X-USER-ID']&.split(' ')&.last.to_i
  #   p "-------------i am line 23-------------", user_id
  #   @current_user ||= User.find_by(id: user_id) if user_id
  #   # p "-------------THIS IS CURRENT USER-------------"
  # end

  def not_found(exception)
    render json: { error: exception.message }, status: :not_found
  end

  def internal_server_error(exception)
    if Rails.env.development?
      response = { type: exception.class.to_s, error: exception.message }
    else
      response = { error: "INTERNAL SERVER ERROR" }
    end
    render json: response, status: :internal_server_error
  end


end
