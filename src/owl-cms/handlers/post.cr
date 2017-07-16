require "../models/post"
require "../repositories/memory"

module Owl
  class PostHandler
    def initialize
      @repository = PostRepository.new
    end

    def add_post(title : String, content : String)
      @repository.save(Post.new(title, content))
    end

    def add_post(title : String, content : String, tags : Array(String))
      @repository.save(Post.new(title, content, tags))
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

  class TagHandler
    def initialize
      @repository = TagRepository.new
    end

    def add_tag(name : String)
      @repository.save(Tag.new(name))
    end

    def get_tag(id)
      @repository.get(id)
    end

    def get_all
      @repository.get_all
    end

    def delete_tag(id)
      @repository.delete(id)
      true
    end

    def clear
      @repository.clear
    end
  end
end
