require "../models/post"
require "../repositories/memory"

module Owl
  class PostHandler
    def initialize
      @repository = PostRepository.new
    end

    def add_post(title, content)
      @repository.save(Post.new(title, content))
    end

    def get_post(id)
      @repository.get(id)
    end

    def get_all
      @repository.get_all
    end

    def delete_post(id)
      @repository.delete(id)
      true
    end

    def clear
      @repository.clear
    end
  end
end
