class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :about, :contact]

  layout :resolve_layout

  def home
    if user_signed_in?
      @posts = Post.all
      render layout: "application"
    end
  end

  def about
  end

  def contact
  end

  private
    def resolve_layout
      case action_name
      when "home" 
        "home"
      else
        "application"
      end
    end
end
