class Recommend
  def initialize
    @title = '今月のオススメ'
    @text = ['オススメ1', 'オススメ2']
  end

  def output_recommend
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  def output_start
    raise 'called:output_start'
  end

  def output_head
    raise 'called:output_head'
  end

  def output_body_start
    raise 'called:output_body_start'
  end

  def output_body
    @text.each do |line|
      output_line(line)
    end
  end

  def output_line(line)
    raise 'called:output_line'
  end

  def output_body_end
    raise 'called:output_body_end'
  end

  def output_end
    raise 'called:output_end'
  end
end
