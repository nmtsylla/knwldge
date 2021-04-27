class SendUserAnswerNotificationJob < ApplicationJob
  queue_as :default

  def perform(id)
    answer = Answer.find(id)
    UserMailer.notify_answer(answer).deliver_now if answer.question.user_id?
  end
end
