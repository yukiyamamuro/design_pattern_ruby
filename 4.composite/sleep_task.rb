require './4.composite/task'

class SleepTask < Task
  def initialize
    super('do sleep task')
  end

  def get_time_required
    6.0
  end
end