class ThanksMailer < ApplicationMailer
  def send_mail(user)
    @user = user
    @url = "http://localhost:3000/"
    mail to: user.email, subject:"SignUpComplete 新規登録完了いたしました"
  end
end
