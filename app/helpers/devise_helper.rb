﻿module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
    <div class="card-panel red accent-2">
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end