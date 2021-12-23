class WechatOpenidService
  attr_reader :error, :js_code

  def initialize(js_code)
    @error = 'Wechat miniprogram credentials are missing' if app_id.blank? || app_secret.blank?
    @js_code = js_code
  end

  def request
    url = "https://api.weixin.qq.com/sns/jscode2session?#{params.to_query}"
    res = RestClient.get(url)
    JSON.parse(res)
  rescue => e
    @error = e
  end

  private

  def app_id
    Rails.application.credentials.dig(:wx_mp, :app_id)
  end

  def app_secret
    Rails.application.credentials.dig(:wx_mp, :app_secret)
  end

  def params
    {
      appid: app_id,
      secret: app_secret,
      js_code: js_code,
      grant_type: 'authorization_code'
    }
  end
end
