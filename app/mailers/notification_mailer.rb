class NotificationMailer < ApplicationMailer
  def send_message(contact)
    @contact = contact
    mail to: 'yossy1986512@yahoo.co.jp', subject: 'ActionMailerのテスト送信'
  end
end
