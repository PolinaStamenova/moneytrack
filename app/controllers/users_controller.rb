class UsersController < ApplicationController
  # before_action :logged_in_user, only: [:new]
  # before_action :authenticate_user!, only: [:new]
  def home
  end

  def new
    @user = User.new
  end
end
