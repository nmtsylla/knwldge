require "rails_helper"
RSpec.describe Session, :type => :model do
  before(:all) do
    @session1 = FactoryBot.create(:question)
  end

  it "is valid with valid attributes" do
    expect(@session1).to be_valid
  end

  it "is not valid without a startDate" do
    session2 = FactoryBot.build(:session, startedAt: nil)
    expect(session2).to_not be_valid
  end

  it "is not valid without a user" do
    session2 = FactoryBot.build(:session, user: nil)
    expect(session2).to_not be_valid
  end
end
