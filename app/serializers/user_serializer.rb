class UserSerializer < ActiveModel::Serializer
  attributes :id, :mp_session_key, :mp_openid, :unionid
end
