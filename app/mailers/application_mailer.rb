class ApplicationMailer < ActionMailer::Base
  # For use with HE-ARC server.
  #default from: "admin@srvz-webapp.he-arc.ch"
  # Because seeming to be professional is better than being one.
  default from: "noreply@meetING.com"
  layout 'mailer'
end
