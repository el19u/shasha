module FlashHelper
  def flash_messages
    flash.collect do |key, msg|
      content_tag :div, msg, :class => "flash #{key}"
    end.join.html_safe
  end
end