if Rails.env != 'test'
  Rails.logger.info "============= reading email_setup ================"
  email_settings = YAML::load(File.open("#{Rails.root.to_s}/config/email.yml"))
  ActionMailer::Base.smtp_settings = email_settings[Rails.env] unless email_settings[Rails.env].nil?
end
