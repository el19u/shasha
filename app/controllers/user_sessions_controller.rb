# frozen_string_literal: true
class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def create
    @user = login(params[:user][:email], params[:user][:password])

    if @user
      redirect_back_or_to(root_path, notice: "Logged in successfully")
    else
      flash.now[:alert] = "Login failed"
      render("new", status: :unprocessable_entity)
    end
  end

  def destroy
    logout
    redirect_to(root_path, notice: "Logged out!", status: :see_other)
  end
end
