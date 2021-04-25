require "rails_helper"
RSpec.describe Question, :type => :model do
  before(:all) do
    @question1 = FactoryBot.create(:question)
  end

  it "is valid with valid attributes" do
    expect(@question1).to be_valid
  end

  it "is not valid without a session" do
    question2 = FactoryBot.build(:question, session: nil)
    expect(question2).to_not be_valid
  end
end
