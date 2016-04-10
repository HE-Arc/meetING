class SubscriptionMailer < ApplicationMailer
  def confirm(post_author,post)
    @email = post_author.email
    @subject = 'Votre flamme s\'est identifiée!'
    @post = post
    @post_author = post_author

    Rails.logger.info "===========SENDING MATCH EMAIL TO ========> #{@email}"

    mail(to: @email, subject: @subject)
  end
end
