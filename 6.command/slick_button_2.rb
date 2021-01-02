class SlickButton2
  attr_accessor :command

  def initialize(&block)
    @command = block
  end

  def on_button_push
    @command.call if @command
  end
end

SlickButton2.new do
  puts 'saved!!'
end.on_button_push