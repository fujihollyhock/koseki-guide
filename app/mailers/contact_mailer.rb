class ContactMailer < ApplicationMailer
  default from: "example@example.com" 

  def received_email(contact)
    @contact = contact
    mail(:to => ENV['SEND_MAIL'], :subject => "お問い合わせ確認通知")
  end
end 
