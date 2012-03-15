module ApplicationHelper
  
  def icon_button(text, href, icon_props, link_props)
    html_link_props = link_props.inject('') {|accum, (key, val)| accum + "#{key}=\"#{val}\" " }
    html_icon_props = icon_props.inject('') {|accum, (key, val)| accum + "#{key}=\"#{val}\" " }
    image_button = %Q{ 
    <a href="#{href}" #{html_link_props}> 
      <span #{html_icon_props} style="float: left"></span>
      <span style="float: left">#{text}</span>
    </a>
    }
  end

end
