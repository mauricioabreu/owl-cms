require "../models/post"

module Owl
  class PostRepository
    def initialize
      @posts = {} of String => Post
    end

    def save(post : Post)
      @posts[post.id] = post
      post
    end

    def get(post_id : String)
      @posts[post_id]
    end

    def get_all
      @posts
    end

    def delete(post_id : String)
      @posts.delete post_id
    end

    def clear
      @posts.clear
    end
  end
end
