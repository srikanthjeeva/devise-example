module ApplicationHelper
  def notice_with_close_btn(notice)
    html = <<-HTML
      <button type="button" class="close" data-dismiss="alert">x</button>
      <h5>#{notice}</h4>
    HTML

    html.html_safe
  end
end
