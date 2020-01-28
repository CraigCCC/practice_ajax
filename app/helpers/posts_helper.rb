module PostsHelper # :nodoc:
  def current_user_is_post_user_that_can_delete(post)
    link_to('Delete', post_path(post), method: 'delete', remote: true, class: 'btn btn-danger') if current_user && (post.user == current_user)
  end
end
