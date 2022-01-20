class Api::V1::UsersController < Api::V1::BaseController
  # skip_before_action :authenticate_user!, only: [:login]

  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze

  before_action :find_user, only: %i[show update]


  def show
    # find_user
    # @reservations = Reservation.all
    # @reservations.user = current_user
  end



  def login
    p "-----------------------START LOGGING-----------------------"
    p "-----------------------WECHAT USER-----------------------"
    # p wechat_user
    # p "-----------------------WECHAT USER-----------------------"
    p "we are here line 24"
    mp_openid = wechat_user.fetch("openid")
    p "-----------------------MP-OPENID-----------------------"
    p "we are here line 27", mp_openid
    p "-----------------------MP-OPENID-----------------------"
    @user = User.find_or_create_by(mp_openid: mp_openid)
    p "@user"
    p @user
    render json: {
      userId: @user.id,
      currentUser: @user,
      headers: {"X-USER-ID" => @user.id}
    }
  end

  def update
    user_info = params[:userInfo]
    @user.nickname = user_info[:nickName]
    @user.avatar = user_info[:avatarUrl]
    @user.save!
    render json: { currentUser: @user }
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def wechat_user
    wechat_params = {
      appid: Rails.application.credentials[:wx_app_id],
      secret: Rails.application.credentials[:wx_secret_id],
      js_code: params[:code],
      grant_type: "authorization_code"
    }
    p "-----------------------WECHAT_PARAMS-----------------------"
    p wechat_params
    p "-----------------------WECHAT_PARAMS-----------------------"
    p "-----------------------WECHAT_RESPONSE-----------------------"
    p "we are here line 59"
    @wechat_response ||= RestClient.get(URL, params: wechat_params)
    p @wechat_response
    p "-----------------------WECHAT_RESPONSE-----------------------"
    p "-----------------------WECHAT_USER-----------------------"
    @wechat_user ||= JSON.parse(@wechat_response.body)
    # p @wechat_user
    # p "-----------------------WECHAT_USER-----------------------"
  end


end
