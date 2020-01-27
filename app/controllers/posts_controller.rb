class PostsController < ApplicationController # :nodoc:
  def index
    @post = Post.all.order('id DESC')
  end
end
