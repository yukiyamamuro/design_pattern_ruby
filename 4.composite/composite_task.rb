require './4.composite/task'

class CompositeTask < Task
  def initialize(name)
    super("do #{name} task")
    @sub_tasks = []
  end

  def <<(task)
    @sub_tasks << task
  end

  def remove_sub_task(task)
    @sub_tasks.delete(task)
  end

  def get_time_required
    time = 0.0
    @sub_tasks.each { |task| puts task.get_time_required; time += task.get_time_required }
    puts "#{time}時間かかりました。"
    time
  end
end