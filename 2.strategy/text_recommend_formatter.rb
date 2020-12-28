class TextRecommendFormatter
  def output_recommend(context)
    puts "*****#{context.title}*****"
    context.text.each do |line|
      puts line
    end
  end
end