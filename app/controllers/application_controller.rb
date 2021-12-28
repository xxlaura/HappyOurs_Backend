class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  # before_action :set_locale

  # private

  # def set_locale
  #   I18n.locale = params[:locale] || session[:locale] || I18n.default_locale

  #   if request.headers['X-API-Lang'].present? && request.headers['X-API-Lang'].to_sym.in?(I18n.available_locales)
  #     I18n.locale = request.headers['X-API-Lang']
  #   end
  #   session[:locale] = I18n.locale
  # end
end
