class NewsWatcher
  def get_news(news)
    puts '新しいニュースが入りました'
    puts "タイトル： #{news.title}"
    puts "内容： #{news.description}"
  end
end