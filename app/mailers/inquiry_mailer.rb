class InquiryMailer < ActionMailer::Base
  default from: "#@inquiry.email}"   # 送信元アドレス
  default to: "shion.yamaguchi.shion@gmail.com"     # 送信先アドレス
 
  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end
 
end