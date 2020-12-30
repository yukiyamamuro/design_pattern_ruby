require './4.composite/task'

class TrainingTask < Task
  def initialize
    super('do training task')
  end

  def get_time_required
    3.0
  end
end