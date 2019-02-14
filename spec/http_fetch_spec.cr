require "./spec_helper"
require "../http_fetch"

describe Fetch do
  describe "#get_url" do
    context "with a working url" do
      response = Fetch.get_url("http://google.ca")

      it "should start with a status" do
        response.should start_with("Status:")
      end

      it "should not start with error" do
        response.should_not start_with("Error:")
      end

      it "should contain a body" do
        response.should contain("Body:")
      end
    end

    context "with a failing url" do
      response = Fetch.get_url("derp")

      it "should start with an error" do
        response.should start_with("Error:")
      end

      it "should not start with status" do
        response.should_not start_with("Status:")
      end
    end
  end
end
