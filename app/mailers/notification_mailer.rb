class NotificationMailer < ApplicationMailer
  def send_message(contact)
    @contact = contact
    mail to: 'bellfieldsoap@gmail.com', subject: 'ActionMailerのテスト送信'
  end
end
