require "secure_random"

module Owl
  class Post
    def initialize(title : String, content : String)
      @id = SecureRandom.uuid
      @title = title
      @content = content
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
  end
end
