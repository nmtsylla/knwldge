require "rails_helper"

describe "questions" do
  let(:session) { FactoryBot.create(:session) }
  let(:user) { FactoryBot.create(:user) }

  describe "new" do
    it "can add a question with unauthenticated user" do
      expect do
        visit "/sessions/#{session.id}"
        fill_in "question[content]", with: "hello"
        click_button "Soumettre"
      end.to change { Question.count }.by(1)
      question = Question.last
      expect(question.user_id).to eq(nil)
    end

    it "can add a question with authenticated user" do
      sign_in_as(user)
      expect do
        visit "/sessions/#{session.id}"
        fill_in "question[content]", with: "hello"
        click_button "Soumettre"
      end.to change { Question.count }.by(1)
      question = Question.last
      expect(question.user_id).to eq(user.id)
    end
  end
end
