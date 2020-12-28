class RecommendProcVer
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter)
    @title = '今月のおすすめ'
    @text = ['おすすめ１', 'おすすめ２']
    @formatter = formatter
  end

  def output_recommend
    @formatter.call(self)
  end
end

HTML_FORMATTER = lambda do |context|
  puts '<html>'
  puts '  <head>'
  puts "    <title>#{context.title}</title>"
  puts '  </head>'
  puts '  <body>'
  context.text.each do |line|
    puts "    <p>#{line}</p>"
  end
  puts '  </body>'
  puts '</html>'
end


recommend = RecommendProcVer.new &HTML_FORMATTER
recommend.output_recommend
