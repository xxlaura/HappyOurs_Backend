class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :authenticate_user_from_token!, only: [:wx_login]

  def wx_login
    # every new user will login here and create a new user and issue an auth token
    js_code = params[:code]

    return render_error(I18n.t('errors.wechat.js_code_missing'), nil) unless js_code

    client = WechatOpenidService.new(js_code)

    return render_error(I18n.t('errors.wechat.wx_app_error')) unless client.error.nil?

    result = client.request
    puts "===========Result=============="
    p result

    return render_error(I18n.t('errors.wechat.tencent_error', nil)) if result['errcode']

    user = User.find_by(mp_openid: result['openid'])

    options = { mp_session_key: result['session_key']}
    options[:unionid] = result['unionid'] if result['unionid'] && user&.unionid.blank?

    if user
      user.update(options)
    else
      options[:mp_openid] = result['openid']
      options[:email] = "#{SecureRandom.hex(8)}@aditti.cn"
      options[:password] = '123456'
      user = User.create(options)
    end

    auth_token = issue_jwt_token(user)
    token = {
      auth_token: auth_token,
      expires: Rails.application.credentials.dig(:jwt, :expiration).to_i.seconds.from_now.to_i * 1000
    }
    puts "==============OUTPUT================"
    puts "auth_token: #{auth_token}"
    puts "token: #{token}"
    puts "user: #{user}"
    puts "standard_hash: #{user}"
    puts "Response: #{response}"
    user = ActiveModelSerializers::SerializableResource.new(user).as_json
    res = {user: user, auth_token: token}
    render_success(res)
  end
end
