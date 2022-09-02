class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_comment.subject
  #
  default :from => "泰翰實業有限公司 <taihanweb@gmail.com>"
  # default :from => "Victor <withvictor@gmail.com>"

  # def notify_comment(user, comment)
  #     @comment = comment
  #     mail(:to => user.email, :subject => "New Comment")
  # end

  def notify_comment(ask)     
    @ask=ask
    

    mail to: "nvizero@yahoo.com.tw"
  end

  def report_class( name,email,phone,title,content)    
    @name     = name 
    @email    = email 
    @phone    = phone
    @title    = title
    @content  = content
    smail     = [ "info@thmageq.com", "han5983@umail.hinet.net"]
    mail to: smail, subject:"Web service information"
  end


end
