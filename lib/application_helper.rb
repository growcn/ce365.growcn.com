module ApplicationHelper



  def list_app_li_tag(title,content,url,icon=nil)
    icon_image = if icon!={} and !icon.nil?
      #image_tag(icon[:image],icon[:size])
      icon
    else
      image_tag(lorem.image('70x70'))
    end

    url_text = url=='#' ? "" : url

    %Q{
    <li>
      <dl>
        <dt> #{icon_image} <a href="#{url}"></a> </dt>
        <dd> <h3><a href="#{url}">#{title}</a></h3>#{url_text} </dd>
      </dl>
      <p>#{content}</p>
    </li>
    }
  end
end