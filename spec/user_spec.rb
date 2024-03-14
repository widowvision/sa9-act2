require_relative '../lib/user.rb'

RSpec.describe User do
  describe "#log_in" do
    it "logs the user in" do
      expect { user.log_in }.to change { user.logged_in }.from(false).to(true)
    end
  end
  describe "#log_out" do
    it "logs the user out" do
      expect { user.log_out }.to change { user.logged_in }.from(true).to(false)
    end
  end
  describe "#username" do
    it "returns the correct username" do
      expect(user.username).to eq(username)
    end
  end
end
