require "../models/post"
require "../models/tag"

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

  class TagRepository
    def initialize
      @tags = {} of String => Tag
    end

    def save(tag : Tag)
      @tags[tag.id] = tag
    end

    def get(tag_id : String)
      @tags[tag_id]
    end

    def get_all
      @tags
    end

    def delete(tag_id : String)
      @tags.delete tag_id
    end

    def clear
      @tags.clear
    end
  end
end
