class StaticPagesController < ApplicationController

  def home
    @user = current_user
    # @projects = @user.projects
  end
end
