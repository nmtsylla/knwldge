class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_answer.subject
  #
  def notify_answer(answer)
    @greeting = "Hi"
    @answer = answer
    mail to: "boobasylla@gmail.com"
  end
end
