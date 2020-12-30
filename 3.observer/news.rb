require './3.observer/news_watcher.rb'
require './3.observer/news_watcher_2.rb'
require './3.observer/news_observer.rb'

class News
  include NewsObserver

  attr_reader :title, :description

  def arrive(title, description, category)
    @title = title
    @description = description
    @category = category
    notify_observers
  end
end

news = News.new
news.add_observer(NewsWatcher.new)
news.add_observer(NewsWatcher2.new)

news.arrive('お知らせ', '2021年になります', '時事')