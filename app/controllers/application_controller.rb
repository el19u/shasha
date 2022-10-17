# frozen_string_literal: true
class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :set_locale

  private

  def not_authenticated
    redirect_to(login_path, alert: "Please login first")
  end

  def set_locale
    if params[:locale] && I18n.available_locales.include?(params[:locale].to_sym)
      session[:locale] = params[:locale]
    end

    I18n.locale = session[:locale] || I18n.default_locale
  end
end
