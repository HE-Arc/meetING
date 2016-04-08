class SubscriptionMailer < ApplicationMailer
  def confirm(post_author,post)
    @email = post_author.email
    @subject = 'Votre flamme s\'est identifiée!'
    @post = post
    @post_author = post_author

    # Should not need to be done here as it was set up in the base class.
    # This is just to be sure.
    delivery_options = { address: "noreply@meetING.com" }

    Rails.logger.info "===========SENDING MATCH EMAIL TO ========> #{@email}"

    mail(to: @email, subject: @subject, delivery_method_options: delivery_options)
  end
end
