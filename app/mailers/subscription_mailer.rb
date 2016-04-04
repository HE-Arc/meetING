class SubscriptionMailer < ApplicationMailer
  def confirm(post_author,post)
    @email = post_author.email
    @subject = 'Your post has been seen and confirmed'

    mail to: @email, subject: @subject
  end
end
