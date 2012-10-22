module ApplicationHelper
  def inside_layout layout = 'application', &block
    render :inline => capture_haml(&block), :layout => "layouts/#{layout}"
  end

  def nav_link_active?(link)
    case link
    when :details
      "active"  if action_name == "photography_details"
    else
      "active"  if action_name == link.to_s
    end
  end

  def nav_link_options(link)
    {:class => 'active'}  if nav_link_active?(link)
  end
end
