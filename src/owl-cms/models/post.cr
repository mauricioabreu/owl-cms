require "secure_random"

module Owl
  class Post
    def initialize(title : String, content : String, tags = [] of String)
      @id = SecureRandom.uuid
      @title = title
      @content = content
      @tags = tags
    end

    def id
      @id
    end

    def title
      @title
    end

    def content
      @content
    end

    def tags
      @tags
    end
  end
end
