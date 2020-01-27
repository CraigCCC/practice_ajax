class PostsController < ApplicationController # :nodoc:
  def index
    @posts = Post.all.order('id DESC')
  end
end
