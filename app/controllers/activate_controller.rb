class ActivateController < ApplicationController
  def activated
    if current_user.activated
      redirect_to root_path
    end
  end
end
