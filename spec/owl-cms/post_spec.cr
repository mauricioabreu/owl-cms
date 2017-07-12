require "../spec_helper"
require "../../src/owl-cms/handlers/post"

describe Owl::PostHandler do
  describe "with valid params" do
    post_handler = Owl::PostHandler.new

    it "saves a new Post model" do
      post = post_handler.add_post("foo", "bar")
      post.title.should eq("foo")
      post.content.should eq("bar")
    end

    it "retrieves a Post" do
      # Add a new post so we can retrieve it
      post = post_handler.add_post("foo", "bar")
      # And then we retrieve it
      post = post_handler.get_post(post.id)
      post.title.should eq("foo")
      post.content.should eq("bar")
    end

    it "retrieves all Posts" do
      post_handler.clear
      post_handler.add_post("foo", "bar")
      post_handler.add_post("bar", "foo")
      posts = post_handler.get_all
      posts.size.should eq(2)
    end

    it "deletes a Post" do
      post = post_handler.add_post("foo", "bar")
      post_handler.delete_post(post.id).should eq(true)
    end
  end
end
