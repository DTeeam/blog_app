module NewsHelper
  def display_index_news_links(news)
    capture do
      concat link_to('Read more', news, class: 'stretched-link')
    end
  end

  def display_show_news_links(news)
    capture do
    	concat link_to('Read more', news, class: 'stretched-link')
      if current_user == news.user
        concat link_to 'Delete', news, method: :delete, data: { confirm: 'Are you sure?' }
        concat ' | '
        concat link_to 'Edit', edit_news_path(news)
        concat ' | '
      end
      concat link_to 'Back', news_path
    end
  end
end