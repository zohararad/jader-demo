class PostsController < ApplicationController

  def index
    page = params[:page] || 1
    @posts = Post.page(page).per(10)
    respond_to do |format|
      format.html
      format.json {
        render :json => @posts.to_jade
      }
    end
  end

  def show
    @post = Post.find params[:id]
    respond_to do |format|
      format.html
      format.json {
        render :json => @post.to_jade
      }
    end
  end

end
