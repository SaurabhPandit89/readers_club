module ApplicationHelper
  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym]
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(
        content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)}") do
          concat content_tag(:button, '×'.html_safe, class: "close", data: { dismiss: 'alert' })
          concat message
        end
      )
    end
    nil
  end
end
