require './template_method/recommend'

class TextRecommend < Recommend
  def output_start; end

  def output_head
    puts("****#{@title}****")
  end

  def output_body_start; end

  def output_line(line)
    puts(line)
  end

  def output_body_end; end

  def output_end; end
end

TextRecommend.new.output_recommend