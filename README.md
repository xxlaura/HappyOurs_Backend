##Gems Setup:
- Authentication with **devise**
- Authentication with **jwt**
- Background jobs with **sidekiq**
- API calls with **rest-client**
- Handle money and currencies with **money-rails**. Default currency: ***CNY***
- Model translations with **json_translate**. Locales: :en, :cn
- Active Storage with **activestorage-aliyun**
## Credentials set-up
#### In order to use this template set up the following values in config/credentials.yml.enc
```yaml
  wx_mp:
    app_id: [YOUR-Mini-Program-APP-ID (provided by WECHAT)]
    app_secret: [YOUR-Mini-Program-APP-SECRET (provided by WECHAT)]
  aliyun_oss:
    access_key_id: [YOUR-ALIYUN-KEY-ID]
    access_key_secret: [YOUR-ALIYUN-KEY-SECRET]
    bucket_name: [YOUR-ALIYUN-BUCKET-NAME (set by you when creating a bucket)]
    endpoint: https://oss-cn-shanghai.aliyuncs.com (depends on your bucket location)
  api_key: [YOUR-API-KEY]
  jwt:
    token_secret_key: [YOUR-JWT-TOKEN]
    expiration: [TOKEN-EXPIRATION-IN-SECONDS (Recommended: 900)]
  ```
