require "../spec_helper"
require "../../src/owl-cms/handlers/post"

describe Owl::TagHandler do
  describe "with valid params" do
    tag_handler = Owl::TagHandler.new

    it "saves a new Tag model" do
      tag = tag_handler.add_tag("Crystal Lang")
      tag.name.should eq("Crystal Lang")
      tag.slug.should eq("crystal-lang")
    end

    it "retrieves a Tag" do
      # Add a new tag so we can retrieve it
      tag = tag_handler.add_tag("Enjoy your life")
      # And then we retrieve it
      tag = tag_handler.get_tag(tag.id)
      tag.name.should eq("Enjoy your life")
      tag.slug.should eq("enjoy-your-life")
    end

    it "retrieves all Tags" do
      tag_handler.clear
      tag_handler.add_tag("Everything is awesome")
      tag_handler.add_tag("Crystal rocks")
      tags = tag_handler.get_all
      tags.size.should eq(2)
    end

    it "deletes a Post" do
      tag = tag_handler.add_tag("Owl CMS")
      tag_handler.delete_tag(tag.id).should eq(true)
    end
  end
end
