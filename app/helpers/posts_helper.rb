module PostsHelper
  def bulletin_name(bulletin_id)
    Bulletin.find(bulletin_id).title
  end
  
  def tag_icons(tag_list)
    tag_list.map do | tag |
      "<a href='/posts?tag=#{CGI::escape(tag)}' class='tag'>#{tag}</a>"
    end.join(', ').html_safe
  end
end
