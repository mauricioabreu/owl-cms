require "../spec_helper"
require "../../src/owl-cms/utils/slug"

describe "slugify" do
  slugify("What doesn't kill you makes you stronger").should eq("what-doesnt-kill-you-makes-you-stronger")
  slugify("007 - Casino Royale").should eq("007-casino-royale")
end
