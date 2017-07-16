require "secure_random"
require "../utils/slug"

module Owl
  class Tag
    @slug : String

    def initialize(name : String)
      @id = SecureRandom.uuid
      @name = name
      @slug = slugify(name)
    end

    def id
      @id
    end

    def name
      @name
    end

    def slug
      @slug
    end
  end
end
