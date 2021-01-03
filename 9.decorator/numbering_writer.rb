require './9.decorator/simple_writer'
require './9.decorator/writer_decorator'

class NumberingWriter < WriterDecorator
  def initialize(real_writer)
    super(real_writer)
    @line_number = 1
  end

  def write_line(line)
    @real_writer.write_line("#{@line_number}: #{line}")
    @line_number += 1
  end
end

writer = NumberingWriter.new(SimpleWriter.new('./9.decorator/hello.txt'))
writer.write_line('Hello, goodby')