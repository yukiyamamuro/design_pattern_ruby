class NewsWatcher2
  def get_news(news)
    puts '2に新しいニュースが入りました'
    puts "タイトル： #{news.title}"
    puts "内容： #{news.description}"
  end
end