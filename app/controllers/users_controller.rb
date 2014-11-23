class UsersController < ApplicationController
  load_and_authorize_resource

  def show
    redirect_to root_path
  end
end
