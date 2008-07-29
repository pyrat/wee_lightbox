module WeeLightbox

  def load_lightbox
    # content_for :page_includes do
    #       stylesheet_link_tag 'lightbox'
    #     end
    content_for :page_includes do
      stylesheet_link_tag 'lightbox'
    end
    content_for :page_includes do
      javascript_include_tag 'builder', 'lightbox'
    end
  end

  def lightbox_to(small_image_path, big_image_path, caption = "", group = nil)
    if group
      rel = "lightbox[#{group}]"
    else
      rel = "lightbox"
    end
    link_to image_tag(small_image_path), big_image_path, :rel => rel, :title => caption
  end
  
  def load_defaults
    content_for :page_includes do
      javascript_include_tag :defaults, :cache => 'all'
    end
  end
  
end
