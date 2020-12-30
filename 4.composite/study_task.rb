require './4.composite/task'

class StudyTask < Task
  def initialize
    super('do study task')
  end

  def get_time_required
    1.0
  end
end