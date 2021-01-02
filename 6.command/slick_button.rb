require './6.command/save_command'

class SlickButton
  attr_accessor :command

  def initialize(command)
    @command = command
  end

  def on_button_push
    @command.execute if @command
  end
end

SlickButton.new(SaveCommand.new).on_button_push