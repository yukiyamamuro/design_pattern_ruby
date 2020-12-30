require './4.composite/composite_task'
require './4.composite/brainstorming_task'
require './4.composite/sleep_task'

class LifeTask < CompositeTask
  def initialize
    super('life')
    self << BrainstormingTask.new
    self << SleepTask.new
  end
end

LifeTask.new.get_time_required