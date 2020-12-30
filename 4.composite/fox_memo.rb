# メインの実装とは関係ありません

require 'rubygems'
require 'fox16'

include Fox

application = FXApp.new("CompositeGUI", "CompositeGUI")
main_window = FXMainWindow.new(application, "Composite",nil ,nil, DECOR_ALL)
main_window.width = 400
main_window.height = 200

super_frame = FXVerticalFrame.new(main_window, LAYOUT_FULL_X|LAYOUT_FULL_Y)
FXLabel.new(surper_frame, "Text Editor Application")

text_editor = FXHorizontalFrame.new(surper_frame, LAYOUT_FULL_X|LAYOUT_FULL_Y)

text = FXText.new(text_editor, nil, 0,TEXT_READONLY|TEXT_WORDRAP|LAYOUT_FULL_X|LAYOUT_FULL_Y)
text.text = "This is some text."

button_frame = FXVerticalFrame.new(text_editor, LAYOUT_SIDE_RIGHT|LAYOUT_FULL_Y)

FXBotton.new(button_frame, "Cut")
FXBotton.new(button_frame, "Copy")
FXBotton.new(button_frame, "Paste")

application.create
main_window.show(PLACEMENT_SCREEN)
application.run