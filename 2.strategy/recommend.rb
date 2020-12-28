require './2.strategy/text_recommend_formatter'
require './2.strategy/html_recommend_formatter'

class Recommend
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = '今月のおすすめ'
    @text = ['おすすめ１', 'おすすめ２']
    @formatter = formatter
  end

  def output_recommend
    @formatter.output_recommend(self)
  end
end


Recommend.new(HtmlRecommendFormatter.new).output_recommend
Recommend.new(TextRecommendFormatter.new).output_recommend