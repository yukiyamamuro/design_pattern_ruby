require './4.composite/composite_task'
require './4.composite/study_task'
require './4.composite/training_task'

class BrainstormingTask < CompositeTask
  def initialize
    super('brainstorming')
    self << StudyTask.new
    self << TrainingTask.new
  end
end

BrainstormingTask.new.get_time_required