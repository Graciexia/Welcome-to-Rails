class UsersController < ApplicationController
  def index
  user_all = User.all
  render text:
  user_all.map {|user| "#{user.first_name}, #{user.last_name}, #{user.age}"}.join("<p>")
  end

  def show
  if User.exists?(params[:id])
      user = User.find(params[:id])
      render text: "#{user.first_name},  #{user.last_name},  #{user.age}"
    else
      render text: 'User Not Found', status: 404
    end
    end
end
