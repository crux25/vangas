class PostsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = current_user.posts.build(content: params[:post])
    if @post
      @post.save
    end
    redirect_to root_path
  end
end
